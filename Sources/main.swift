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

extension String {
  func capitalized() -> String {
    return prefix(1).capitalized + dropFirst()
  }
}

class Auth : Codable {
  var scopes : [String : AuthScope]
}
class AuthScope : Codable {
  var description : String
}
class Schema : Codable {
  var id : String?
  var type : String?
  var _ref : String?
  var description : String?
  var _default : String?
  var required : Bool?
  var format : String?
  var pattern : String?
  var minimum : String?
  var maximum : String?
  var _enum : [String]?
  var enumDescriptions : [String]?
  var repeated : Bool?
  var location : String?
  var properties : [String : Schema]?
  var additionalProperties : Schema?
  var items : Schema?
  var annotations: [String: [String : [String]]]?

  enum CodingKeys : String, CodingKey {
    case id = "id"
    case type = "type"
    case _ref = "$ref"
    case description = "description"
    case _default = "default"
    case required = "required"
    case format = "format"
    case pattern = "pattern"
    case minimum = "minimum"
    case maximum = "maximum"
    case _enum = "enum"
    case enumDescriptions = "enumDescriptions"
    case repeated = "repeated"
    case location = "location"
    case properties = "properties"
    case additionalProperties = "additionalProperties"
    case items = "items"
    case annotations = "annotations"
  }

  public func Type() -> String {
    if let type = type {
      switch type {
      case "string": return "String"
      case "integer": return "Int"
      case "number": return "Float"
      case "boolean": return "Bool"
      case "array":
        return "[" + self.ItemsType() + "]"
      case "object":
        return "Unknown"
      default:
        return type
      }
    }
    if let _ref = _ref {
      return _ref
    }
    return "UNKNOWN SCHEMA TYPE"
  }
  public func ItemsType() -> String {
    if let items = items {
      return items.Type()
    } else {
      return "UNKNOWN ITEM TYPE"
    }
  }

  public func Comment() -> String {
    if let description = description {
      return " // " + description
    } else {
      return ""
    }
  }
}
class SchemaReference : Codable {
  var _ref : String
  enum CodingKeys : String, CodingKey {
    case _ref = "$ref"
  }
}

class Method : Codable {
  var id : String?
  var path : String?
  var httpMethod : String?
  var description : String?
  var parameters : [String : Schema]?
  var parameterOrder : [String]?
  var request : SchemaReference?
  var response : SchemaReference?
  var scopes : [String]?
  var supportsMediaDownload : Bool?
  var supportsMediaUpload : Bool?
  var mediaUpload : MediaUpload?
  var supportsSubscription: Bool?

  func RequestType() -> String {
    if let request = request {
      return request._ref
    }
    return "UNKNOWN"
  }
  func ResponseType() -> String {
    if let response = response {
      return response._ref
    }
    return "UNKNOWN"  }
}
class MediaUpload : Codable {
  var accept : [String]?
  var maxSize : String?
  var protocols: [String : MediaUploadProtocol]?
}
class MediaUploadProtocol : Codable {
  var multipart : Bool?
  var path : String?
}
class Resource : Codable {
  var methods : [String : Method]
  var resource : [String : Resource]?
}
class Service : Codable {
  var kind : String
  var discoveryVersion : String
  var id : String
  var name : String
  var version : String
  var revision : String
  var title : String
  var description : String
  var icons : [String : String]
  var documentationLink : String
  var labels : [String]?
  var _protocol : String?
  var baseUrl : String
  var basePath : String
  var rootUrl : String
  var servicePath : String
  var batchPath : String
  var parameters : [String : Schema]
  var auth : [String : Auth]
  var features : [String]?
  var schemas : [String : Schema]?
  var methods : [String : Method]?
  var resources : [String : Resource]?

  func BaseURLWithVersion() -> String {
    return self.baseUrl + self.version + "/"
  }

  func generate() {
    guard let schemas = schemas else {
      return
    }
    print("import Foundation")
    print("import OAuth2")
    for s in schemas.sorted(by:  { $0.key < $1.key }) {
      print("")
      print("public struct \(s.key) : Codable {")
      if let properties = s.value.properties {
        for p in properties.sorted(by:  { $0.key < $1.key }) {
          print("  public var `\(p.key)` : \(p.value.Type())?")
        }
      }
      print("}")
    }
    print("")
    print ("public struct Unknown : Codable {}")
    print("")
    print("public class \(self.name.capitalized()) : Service {")
    print("")
    print("  init(tokenProvider: TokenProvider) throws {")
    print("    try super.init(tokenProvider, \"\(BaseURLWithVersion())\")")
    print("  }")
    if let resources = resources {
      for r in resources.sorted(by:  { $0.key < $1.key }) {
        let methods = r.value.methods
        for m in methods.sorted(by:  { $0.key < $1.key }) {
          print("")
          print("  public func \(r.key)_\(m.key) (")
          print("    request: \(m.value.RequestType()),")
          print("    completion: @escaping (\(m.value.ResponseType())?, Error?) -> ()) throws {")
          print("       try performPost(\"\(r.key):\(m.key)\", request, completion)")
          print("  }")
        }
      }

    }

    print("}")
  }
}

func main() throws {
  let arguments = CommandLine.arguments
  //print("arguments: \(arguments)")

  let path = "disco-language-v1.json"
  let data = try Data(contentsOf: URL(fileURLWithPath: path))
  //print(String(data:data, encoding:.utf8)!)
  let decoder = JSONDecoder()
  do {
    let disco = try decoder.decode(Service.self, from: data)
    disco.generate()
  } catch {
    print("error \(error)")
  }
}

do {
  try main()
} catch (let error) {
  print("ERROR: \(error)")
}
