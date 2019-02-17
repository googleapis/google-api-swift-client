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
import Discovery

extension Discovery.Method {
  func ParametersTypeDeclaration(resource : String, method : String) -> String {
    var s = ""
    s.addLine()
    if let parameters = parameters {
      s.addLine(indent:2, "public struct " + ParametersTypeName(resource:resource, method:method) + " : Parameterizable {")
      for p in parameters.sorted(by:  { $0.key < $1.key }) {
        s.addLine(indent:4, "public var " + p.key + " : " + p.value.Type() + "?")
      }
      s.addLine(indent:4, "public func queryParameters() -> [String] {")
      s.addLine(indent:6, "return [" +
        parameters.sorted(by: { $0.key < $1.key })
          .filter { if let location = $0.value.location { return location == "query" } else {return false}}
          .map { return "\"" + $0.key + "\"" }
          .joined(separator: ",")
        + "]")
      s.addLine(indent:4, "}")
      s.addLine(indent:4, "public func pathParameters() -> [String] {")
      s.addLine(indent:6, "return [" +
        parameters.sorted(by: { $0.key < $1.key })
          .filter { if let location = $0.value.location { return location == "path" } else {return false}}
          .map { return "\"" + $0.key + "\"" }
          .joined(separator: ",")
        + "]")
      s.addLine(indent:4, "}")
      s.addLine(indent:2, "}")
    }
    return s
  }
}

extension Discovery.Service {
  func generate() -> String {
    guard let schemas = schemas else {
      return ""
    }
    var s = Discovery.License
    s.addLine()
    for i in
      ["Foundation",
       "OAuth2",
       "GoogleAPIRuntime"] {
        s.addLine("import " + i)
    }
    s.addLine()
    s.addLine("public class \(self.name.capitalized()) : Service {")
    s.addLine()
    s.addLine(indent:2, "init(tokenProvider: TokenProvider) throws {")
    s.addLine(indent:4, "try super.init(tokenProvider, \"\(self.baseUrl)\")")
    s.addLine(indent:2, "}")
    s.addLine()
    s.addLine(indent:2, "public class Object : Codable {}")
    for schema in schemas.sorted(by:  { $0.key < $1.key }) {
      switch schema.value.type {
      case "object":
        s.addLine()
        s.addLine(indent:2, "public struct \(schema.key) : Codable {")
        if let properties = schema.value.properties {
          for p in properties.sorted(by: { $0.key < $1.key }) {
            s.addLine(indent:4, "public var `\(p.key)` : \(p.value.Type())?")
          }
        }
        s.addLine(indent:2, "}")
      case "array":
        s.addLine()
        if let itemsSchema = schema.value.items {
          if let itemType = itemsSchema.type {
            switch itemType {
            case "object":
              s.addLine(indent:2, "public typealias \(schema.key) = [\(schema.key)Item]")
              s.addLine()
              s.addLine(indent:2, "public struct \(schema.key)Item : Codable {")
              if let properties = itemsSchema.properties {
                for p in properties.sorted(by: { $0.key < $1.key }) {
                  s.addLine(indent:4, "public var `\(p.key)` : \(p.value.Type())?")
                }
              }
              s.addLine("}")
            default:
              s.addLine("ERROR-UNHANDLED-ARRAY-TYPE \(itemType)")
            }
          }
        }
      default:
        s.addLine("ERROR-UNHANDLED-SCHEMA-VALUE-TYPE \(schema.key) \(String(describing:schema.value.type))")
      }
    }
    
    if let resources = resources {
      for r in resources.sorted(by:  { $0.key < $1.key }) {
        let methods = r.value.methods
        for m in methods.sorted(by:  { $0.key < $1.key }) {
          if m.value.HasParameters() {
            s += m.value.ParametersTypeDeclaration(resource:r.key, method:m.key)
          }
          let methodName = r.key + "_" + m.key
          s.addLine()
          s.addLine(indent:2, "public func \(methodName) (")
          if m.value.HasRequest() {
            s.addLine(indent:4, "request: \(m.value.RequestTypeName()),")
          }
          if m.value.HasParameters() {
            s.addLine(indent:4, "parameters: \(m.value.ParametersTypeName(resource:r.key, method:m.key)),")
          }
          if m.value.HasResponse() {
            s.addLine(indent:4, "completion: @escaping (\(m.value.ResponseTypeName())?, Error?) -> ()) throws {")
          } else {
            s.addLine(indent:4, "completion: @escaping (Error?) -> ()) throws {")
          }
          s.addLine(indent:6, "try perform(")
          s.addLine(indent:8, "method: \"\(m.value.httpMethod!)\",")
          var path = ""
          if m.value.path != nil {
            path = m.value.path!
          }
          s.addLine(indent:8, "path: \"\(path)\",")
          if m.value.HasRequest() {
            s.addLine(indent:8, "request: request,")
          }
          if m.value.HasParameters() {
            s.addLine(indent:8, "parameters: parameters,")
          }
          s.addLine(indent:8, "completion: completion)")
          s.addLine(indent:2, "}")
        }
      }
    }
    s.addLine("}")
    return s
  }
}

func main() throws {
  let arguments = CommandLine.arguments
  //print("arguments: \(arguments)\n"
  
  let path = arguments[1]
  let data = try Data(contentsOf: URL(fileURLWithPath: path))
  //print(String(data:data, encoding:.utf8)!)
  let decoder = JSONDecoder()
  do {
    let service = try decoder.decode(Service.self, from: data)
    let code = service.generate()
    print(code)
  } catch {
    print("error \(error)\n")
  }
}

do {
  try main()
} catch (let error) {
  print("ERROR: \(error)\n")
}
