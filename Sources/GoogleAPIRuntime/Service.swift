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

public enum GoogleAPIRuntimeError: Error {
  case apiError(code: Int, message: String)
  case internalError
  case missingPathParameter(String)
  case undecodableApiResponse
}

public protocol Parameterizable {
  func queryParameters() -> [String]
  func pathParameters() -> [String]
  func query() -> [String:String]
  func path(pattern: String) throws -> String
}

public struct ApiError: Decodable {
  public let code: Int
  public let message: String
}

public struct ApiRootError: Decodable {
  public let error: ApiError
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
          case let i as Int:
            q[p] = "\(i)"
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
  public func path(pattern: String) throws -> String {
    var pattern = pattern
    let mirror = Mirror(reflecting:self)
    for p in pathParameters() {
      for child in mirror.children {
        if child.label == p {
          switch child.value {
          case let s as String:
            pattern = pattern.replacingOccurrences(of: "{"+p+"}", with: s)
          case Optional<Any>.none:
            throw GoogleAPIRuntimeError.missingPathParameter(p)            
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
    _ completion : @escaping(Result<Z, Error>) -> ()) {
    guard let data = data, let response = response as? HTTPURLResponse else {
      if let error = error {
        completion(.failure(error))
      } else {
        completion(.failure(GoogleAPIRuntimeError.internalError))
      }
      return
    }
    if response.statusCode < 400 {
      handleResponseSuccess(data: data, completion: completion)
    } else {
      handleResponseError(data: data, completion: completion)
    }
  }
  
  func handleResponseSuccess<Z:Decodable>(data: Data, completion: @escaping(Result<Z, Error>) -> ()) {
    do {
      let decoder = JSONDecoder()
      completion(.success(try decoder.decode(Z.self, from: data)))
    } catch {
      do {
        // try again with the actual payload inside "data" wrapper that is used with some APIs (e.g. translate)
        let decoder = JSONDecoder()
        let payload = try decoder.decode([String: Z].self, from: data)
        if let response = payload["data"] {
          completion(.success(response))
        } else {
          completion(.failure(GoogleAPIRuntimeError.undecodableApiResponse))
        }
      } catch let decodingError {
        completion(.failure(decodingError))
      }
    }
  }
  
  func handleResponseError<Z:Decodable>(data: Data, completion: @escaping(Result<Z, Error>) -> ()) {
    do {
      let decoder = JSONDecoder()
      let error = try decoder.decode(ApiRootError.self, from: data).error
      completion(.failure(GoogleAPIRuntimeError.apiError(code: error.code, message: error.message)))
    } catch let decodingError {
      completion(.failure(decodingError))
    }
  }
  
  public func perform<Z:Decodable>(
    method : String,
    path : String,
    completion : @escaping(Result<Z, Error>) -> ()) {
    let postData : Data? = nil
    connection.performRequest(
      method:method,
      urlString:base + path,
      parameters: [:],
      body:postData) {(data, response, error) in
        self.handleResponse(data, response, error, completion)
    }
  }
  
  public func perform<X:Encodable,Z:Decodable>(
    method : String,
    path : String,
    request : X,
    completion : @escaping(Result<Z, Error>) -> ()) {
    do {
      let encoder = JSONEncoder()
      let postData = try encoder.encode(request)
      connection.performRequest(
        method:method,
        urlString:base + path,
        parameters: [:],
        body:postData) {(data, response, error) in
          self.handleResponse(data, response, error, completion)
      }
    } catch let error {
      completion(.failure(error))
    }
  }
  
  public func perform<Y:Parameterizable,Z:Decodable>(
    method : String,
    path : String,
    parameters : Y,
    completion : @escaping(Result<Z, Error>) -> ()) {
    do {
      let postData : Data? = nil
      let path = try parameters.path(pattern:path)
      connection.performRequest(
        method:method,
        urlString:base + path,
        parameters: parameters.query(),
        body:postData) {(data, response, error) in
          self.handleResponse(data, response, error, completion)
      }
    } catch let error {
      completion(.failure(error))
    }
  }
  
  public func perform<X:Encodable,Y:Parameterizable,Z:Decodable>(
    method : String,
    path : String,
    request : X,
    parameters : Y,
    completion : @escaping(Result<Z, Error>) -> ()) {
    do {
      let encoder = JSONEncoder()
      let postData = try encoder.encode(request)
      let path = try parameters.path(pattern:path)
      connection.performRequest(
        method:method,
        urlString:base + path,
        parameters: parameters.query(),
        body:postData) {(data, response, error) in
          self.handleResponse(data, response, error, completion)
      }
    } catch let error {
      completion(.failure(error))
    }
  }
  
  func handleResponse(
    _ data : Data?,
    _ response : URLResponse?,
    _ error : Error?,
    _ completion : @escaping(Error?) -> ()) {
    completion(error)
  }
  
  public func perform(
    method : String,
    path : String,
    completion : @escaping(Error?) -> ()) {
    let postData : Data? = nil
    connection.performRequest(
      method:method,
      urlString:base + path,
      parameters: [:],
      body:postData) {(data, response, error) in
        self.handleResponse(data, response, error, completion)
    }
  }

  public func perform<X:Encodable>(
    method : String,
    path : String,
    request : X,
    completion : @escaping(Error?) -> ()) {
    do {
      let encoder = JSONEncoder()
      let postData = try encoder.encode(request)
      connection.performRequest(
        method:method,
        urlString:base + path,
        parameters: [:],
        body:postData) {(data, response, error) in
          self.handleResponse(data, response, error, completion)
      }
    } catch let error {
      completion(error)
    }
  }
  
  public func perform<Y:Parameterizable>(
    method : String,
    path : String,
    parameters : Y,
    completion : @escaping(Error?) -> ()) {
    do {
      let postData : Data? = nil
      let path = try parameters.path(pattern:path)
      connection.performRequest(
        method:method,
        urlString:base + path,
        parameters: parameters.query(),
        body:postData) {(data, response, error) in
          self.handleResponse(data, response, error, completion)
      }
    } catch let error {
      completion(error)
    }
  }
}
