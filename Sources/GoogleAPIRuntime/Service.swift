// Copyright 2019 Google Inc. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation
import OAuth2

enum ServiceError: Error {
  case invalidResponse
}

public protocol Parameterizable {
  func queryParameters() -> [String]
  func pathParameters() -> [String]
  func query() -> [String:String]
  func path(pattern: String) -> String
}

extension Parameterizable {
  public func query() -> [String:String] {
    var q : [String:String] = [:]
    let mirror = Mirror(reflecting:self)
    for p in queryParameters() {
      for child in mirror.children {
        if child.label == p {
          switch child.value {
          case let s as String:
            q[p] = s
          case Optional<Any>.none:
            continue
          default:
            print("failed to handle \(p) \(child.value)")
          }
          
        }
      }
    }
    print("query: \(q)")
    return q
  }
  public func path(pattern: String) -> String {
    var pattern = pattern
    let mirror = Mirror(reflecting:self)
    for p in pathParameters() {
      for child in mirror.children {
        if child.label == p {
          switch child.value {
          case let s as String:
            pattern = pattern.replacingOccurrences(of: "{"+p+"}", with: s)
          case Optional<Any>.none:
            continue
          default:
            print("failed to handle \(p) \(child.value)")
          }
        }
      }
    }
    print("path: \(pattern)")
    return pattern
  }
}

// general connection helper
open class Service {
  var connection : Connection
  var base : String
  
  public init(_ tokenProvider : TokenProvider, _ base : String) throws {
    self.connection = try Connection(provider:tokenProvider)
    self.base = base
  }
  
  func handleResponse<Z:Decodable>(
    _ data : Data?,
    _ response : URLResponse?,
    _ error : Error?,
    _ completion : @escaping(Z?, Error?) -> ()) {
    if let data = data {
      print(String(data:data, encoding:.utf8)!)
      let decoder = JSONDecoder()
      do {
        let json = try? JSONSerialization.jsonObject(with: data, options: [])
        if let json = json as? [String:Any] {
          // remove the "data" wrapper that is used with some APIs (e.g. translate)
          if let payload = json["data"] {
            let payloadData = try JSONSerialization.data(withJSONObject:payload)
            completion(try decoder.decode(Z.self, from: payloadData), nil)
          } else {
            completion(try decoder.decode(Z.self, from: data), nil)
          }
        }
      } catch {
        print(String(data:data, encoding:.utf8)!)
        completion(nil, error)
      }
    } else {
      completion(nil, ServiceError.invalidResponse)
    }
  }
  
  public func perform<X:Encodable,Z:Decodable>(
    method : String,
    path : String,
    request : X,
    completion : @escaping(Z?, Error?) -> ()) throws {
    let encoder = JSONEncoder()
    let postData = try encoder.encode(request)
    try connection.performRequest(
      method:method,
      urlString:base + path,
      parameters: [:],
      body:postData) {(data, response, error) in
        self.handleResponse(data, response, error, completion)
    }
  }
  
  public func perform<Y:Parameterizable,Z:Decodable>(
    method : String,
    path : String,
    parameters : Y,
    completion : @escaping(Z?, Error?) -> ()) throws {
    let postData : Data? = nil
    try connection.performRequest(
      method:method,
      urlString:base + parameters.path(pattern:path),
      parameters: parameters.query(),
      body:postData) {(data, response, error) in
        self.handleResponse(data, response, error, completion)
    }
  }
  
  public func perform<X:Encodable,Y:Parameterizable,Z:Decodable>(
    method : String,
    path : String,
    request : X,
    parameters : Y,
    completion : @escaping(Z?, Error?) -> ()) throws {
    let encoder = JSONEncoder()
    let postData = try encoder.encode(request)
    try connection.performRequest(
      method:method,
      urlString:base + parameters.path(pattern:path),
      parameters: parameters.query(),
      body:postData) {(data, response, error) in
        self.handleResponse(data, response, error, completion)
    }
  }
  
  func handleResponse(
    _ data : Data?,
    _ response : URLResponse?,
    _ error : Error?,
    _ completion : @escaping(Error?) -> ()) {
    completion(error)
  }
  
  public func perform<Y:Parameterizable>(
    method : String,
    path : String,
    parameters : Y,
    completion : @escaping(Error?) -> ()) throws {
    let postData : Data? = nil
    try connection.performRequest(
      method:method,
      urlString:base + parameters.path(pattern:path),
      parameters: parameters.query(),
      body:postData) {(data, response, error) in
        self.handleResponse(data, response, error, completion)
    }
  }
  
  public func perform<X:Encodable>(
    method : String,
    path : String,
    request : X,
    completion : @escaping(Error?) -> ()) throws {
    let encoder = JSONEncoder()
    let postData = try encoder.encode(request)
    try connection.performRequest(
      method:method,
      urlString:base + path,
      parameters: [:],
      body:postData) {(data, response, error) in
        self.handleResponse(data, response, error, completion)
    }
  }
}
