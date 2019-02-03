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

// general connection helper
public class Service {
  var connection : Connection
  var base : String

  init(_ tokenProvider : TokenProvider, _ base : String) throws {
    self.connection = try Connection(provider:tokenProvider)
    self.base = base
  }

  func perform<X:Encodable,Y:Decodable>(
    method : String,
    path : String,
    request : X,
    completion : @escaping(Y?, Error?) -> ()) throws {
    let encoder = JSONEncoder()
    let postData = try encoder.encode(request)
    try connection.performRequest(
      method:method,
      urlString:base + path,
      parameters: [:],
      body:postData) {(data, response, error) in
        if let data = data {
          let decoder = JSONDecoder()
          do {
            completion(try decoder.decode(Y.self, from: data), nil)
          } catch {
            print(String(data:data, encoding:.utf8)!)
            completion(nil, error)
          }
        } else {
          completion(nil, ServiceError.invalidResponse)
        }
    }
  }
}
