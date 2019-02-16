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
    var s = "\n"
    if let parameters = parameters {
      s += "  public struct " + ParametersTypeName(resource:resource, method:method) + " : Parameterizable {\n"
      for p in parameters.sorted(by:  { $0.key < $1.key }) {
        s += "    public var " + p.key + " : " + p.value.Type() + "?\n"
      }
      s += "    public func queryParameters() -> [String] {\n"
      s += "      return ["
      s += parameters.sorted(by: { $0.key < $1.key })
        .filter { if let location = $0.value.location { return location == "query" } else {return false}}
        .map { return "\"" + $0.key + "\"" }
        .joined(separator: ",")
      s += "]\n"
      s += "    }\n"
      s += "    public func pathParameters() -> [String] {\n"
      s += "      return ["
      s += parameters.sorted(by: { $0.key < $1.key })
        .filter { if let location = $0.value.location { return location == "path" } else {return false}}
        .map { return "\"" + $0.key + "\"" }
        .joined(separator: ",")
      s += "]\n"
      s += "    }\n"
      s += "  }"
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
    s += "\n"
    s += "import Foundation\n"
    s += "import OAuth2\n"
    s += "import GoogleAPIRuntime\n"

    s += "\n"
    s += "public class \(self.name.capitalized()) : Service {\n"
    s += "\n"
    s += "  init(tokenProvider: TokenProvider) throws {\n"
    s += "    try super.init(tokenProvider, \"\(self.baseUrl)\")\n"
    s += "  }\n"

    s += "\n"
    s += "  public class Object : Codable {}\n"

    for schema in schemas.sorted(by:  { $0.key < $1.key }) {
      switch schema.value.type {
      case "object":
        s += "\n"
        s += "  public struct \(schema.key) : Codable {\n"
        if let properties = schema.value.properties {
          for p in properties.sorted(by: { $0.key < $1.key }) {
            s += "    public var `\(p.key)` : \(p.value.Type())?\n"
          }
        }
        s += "  }\n"
      case "array":
        s += "\n"
        if let itemsSchema = schema.value.items {
          if let itemType = itemsSchema.type {
            switch itemType {
            case "object":
              s += "  public typealias \(schema.key) = [\(schema.key)Item]\n"
              s += "\n"
              s += "  public struct \(schema.key)Item : Codable {\n"
              if let properties = itemsSchema.properties {
                for p in properties.sorted(by: { $0.key < $1.key }) {
                  s += "    public var `\(p.key)` : \(p.value.Type())?\n"
                }
              }
              s += "}\n"
            default:
              s += "ERROR-UNHANDLED-ARRAY-TYPE \(itemType)\n"
            }
          }
        }
      default:
        s += "ERROR-UNHANDLED-SCHEMA-VALUE-TYPE \(schema.key) \(String(describing:schema.value.type))\n"
      }
    }

    if let resources = resources {
      for r in resources.sorted(by:  { $0.key < $1.key }) {
        let methods = r.value.methods
        for m in methods.sorted(by:  { $0.key < $1.key }) {
          if m.value.HasParameters() {
            s += m.value.ParametersTypeDeclaration(resource:r.key, method:m.key) + "\n"
          }
          let methodName = r.key + "_" + m.key
          s += "\n"
          s += "  public func \(methodName) (\n"
          if m.value.HasRequest() {
            s += "    request: \(m.value.RequestTypeName()),\n"
          }
          if m.value.HasParameters() {
            s += "    parameters: \(m.value.ParametersTypeName(resource:r.key, method:m.key)),\n"
          }
          if m.value.HasResponse() {
            s += "    completion: @escaping (\(m.value.ResponseTypeName())?, Error?) -> ()) throws {\n"
          } else {
            s += "    completion: @escaping (Error?) -> ()) throws {\n"
          }
          s += "       try perform(method: \"\(m.value.httpMethod!)\",\n"
          var path = ""
          if m.value.path != nil {
            path = m.value.path!
          }
          s += "                   path: \"\(path)\",\n"
          if m.value.HasRequest() {
            s += "                   request: request,\n"
          }
          if m.value.HasParameters() {
            s += "                   parameters: parameters,\n"
          }
          s += "                   completion: completion)\n"
          s += "  }\n"
        }
      }
    }
    s += "}\n"
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
