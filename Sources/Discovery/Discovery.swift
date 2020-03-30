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

// This default license is prepended to generated files.
// You are welcome to replace it if you are generating clients for non-Google APIs.
public let License = """
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

// NOTE: This file is automatically-generated!
"""

extension String {
  public func capitalized() -> String {
    return prefix(1).capitalized + dropFirst()
  }
  
  public func camelCased() -> String {
    let characterSet: CharacterSet = .init(charactersIn: "-.")
    let components = self.components(separatedBy: characterSet)
    var firstValue = components[0]
    if firstValue.starts(with: "$") || firstValue.starts(with: "@") {
      firstValue = String(firstValue.dropFirst())
    }
    let remainingWords = components.dropFirst().map {$0.capitalized()}.joined(separator: "")
    return "\(firstValue)\(remainingWords)"
  }
  
  public func upperCamelCased() -> String {
    let characterSet: CharacterSet = .init(charactersIn: "-.")
    let components = self.components(separatedBy: characterSet)
    var firstValue = components[0]
    if firstValue.starts(with: "$") || firstValue.starts(with: "@") {
      firstValue = String(firstValue.dropFirst())
    }
    let remainingWords = components.dropFirst().map {$0.capitalized()}.joined(separator: "")
    return "\(firstValue)\(remainingWords)"
  }
  
  public func snakeCased() -> String {
    return self.components(separatedBy: "-").joined(separator: "_")
  }
  
  public func oneLine() -> String {
    return self
      .replacingOccurrences(of:"\n", with:" ")
      .replacingOccurrences(of:"\"", with:"'")
  }
  
  public func escaped() -> String {
    if self == "protocol" { // add other reserved words as needed
      return "`" + self + "`"
    } else {
      return self
    }
  }
  
  public mutating func addLine() {
    self += "\n"
  }
  
  public mutating func addLine(_ line: String) {
    self += line + "\n"
  }
  
  public mutating func addLine(indent: Int, _ line: String) {
    self += String(repeating: " ", count: indent) + line + "\n"
  }
    
  public mutating func addTextWithoutLinebreak(_ line: String) {
    self += line
  }
}

public class Auth_OAuth2: Codable {
    public var scopes : [String : AuthScope]
}

public class Auth : Codable {
  public var oauth2 : Auth_OAuth2
}

public class AuthScope : Codable {
  public var description : String
}

public class Schema : Codable {
  public var id : String?
  public var type : String?
  public var ref : String?
  public var description : String?
  public var `default` : String?
  public var required : Bool?
  public var format : String?
  public var pattern : String?
  public var minimum : String?
  public var maximum : String?
  public var `enum` : [String]?
  public var enumDescriptions : [String]?
  public var repeated : Bool?
  public var location : String?
  public var properties : [String : Schema]?
  public var additionalProperties : Schema?
  public var items : Schema?
  public var annotations: [String : [String]]?
  
  enum CodingKeys : String, CodingKey {
    case id
    case type
    case ref = "$ref"
    case description
    case `default`
    case required
    case format
    case pattern
    case minimum
    case maximum
    case `enum`
    case enumDescriptions
    case repeated
    case location
    case properties
    case additionalProperties
    case items
    case annotations
  }
  
  public func Type(objectName: String? = nil) -> String {
    if let type = type {
      switch type {
      case "string": return "String"
      case "integer": return "Int"
      case "number": return "Double"
      case "boolean": return "Bool"
      case "any": return "JSONAny"
      case "array":
        return "[" + self.ItemsType(objectName: objectName) + "]"
      case "object":
        let potentialName = objectName ?? "Object"
        let escapingNames = ["Type", "Error"]
        return escapingNames.contains(potentialName) ? "Custom_" + potentialName : potentialName
      default:
        return type
      }
    }
    if let ref = ref {
      let escapingNames = ["Type", "Error"]
      if escapingNames.contains(ref) { return "Custom_" + ref }
      return ref
    }
    return "UNKNOWN SCHEMA TYPE"
  }
  
  public func ItemsType(objectName: String? = nil) -> String {
    if let items = items {
      return items.Type(objectName: objectName)
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

public class SchemaReference : Codable {
  public var ref : String
  enum CodingKeys : String, CodingKey {
    case ref = "$ref"
  }
}

public class Method : Codable {
  public var id : String?
  public var path : String?
  public var httpMethod : String?
  public var description : String?
  public var parameters : [String : Schema]?
  public var parameterOrder : [String]?
  public var request : SchemaReference?
  public var response : SchemaReference?
  public var scopes : [String]?
  public var supportsMediaDownload : Bool?
  public var supportsMediaUpload : Bool?
  public var mediaUpload : MediaUpload?
  public var supportsSubscription: Bool?
  public var flatPath : String?
  
  public func HasResponse() -> Bool {
    if response != nil {
      return true
    }
    return false
  }
  
  public func ResponseTypeName() -> String {
    if let response = response {
      return response.ref
    }
    return "ERROR-UNKNOWN-RESPONSE-TYPE"
  }
  
  public func HasRequest() -> Bool {
    if request != nil {
      return true
    }
    return false
  }
  
  public func RequestTypeName() -> String {
    if let request = request {
      return request.ref
    }
    return "ERROR-UNKNOWN-REQUEST-TYPE"
  }
  
  public func HasParameters() -> Bool {
    if let parameters = parameters {
      return parameters.count > 0
    }
    return false
  }
  
  public func ParametersTypeName(resource : String, method : String) -> String {
    if parameters != nil {
      return resource.upperCamelCased() + method.upperCamelCased() + "Parameters"
    }
    return "ERROR-UNKNOWN-PARAMETERS-TYPE"
  }
}

public class MediaUpload : Codable {
  public var accept : [String]?
  public var maxSize : String?
  public var protocols: [String : MediaUploadProtocol]?
}

public class MediaUploadProtocol : Codable {
  public var multipart : Bool?
  public var path : String?
}

public class Resource : Codable {
  public var methods : [String : Method]?
  public var resources : [String : Resource]?
}

public class Service : Codable {
  public var kind : String
  public var discoveryVersion : String
  public var id : String
  public var name : String
  public var version : String
  public var revision : String
  public var title : String
  public var description : String
  public var icons : [String : String]
  public var documentationLink : String
  public var labels : [String]?
  public var `protocol` : String?
  public var baseUrl : String
  public var basePath : String
  public var rootUrl : String
  public var servicePath : String
  public var batchPath : String
  public var parameters : [String : Schema]
  public var auth: Auth?
  public var features : [String]?
  public var schemas : [String : Schema]?
  public var methods : [String : Method]?
  public var resources : [String : Resource]?
  
  func BaseURLWithVersion() -> String {
    return self.baseUrl + self.version + "/"
  }
  
  public func schema(name: String) -> Schema? {
    if let schemas = schemas {
      return schemas[name]
    } else {
      return nil
    }
  }
}
