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

var stderr = FileHandle.standardError
func printerr(_ s : String) {
  stderr.write(("google-cli-swift-generator WARNING: "+s+"\n").data(using:.utf8)!)
}

let ParameterPrefix = ""
let RequestObjectPrefix = "request_"

func optionDeclaration(_ prefix: String, _ name: String, _ schema: Schema) -> String {
  if schema.type == "string" {
    // https://github.com/kylef/Commander/issues/49
    var s = "Options<String>(\""
    s += prefix + name
    s += "\", default: [], count: 1, description: \""
    if let d = schema.description {
      s += d.oneLine()
    }
    s += "\"),"
    return s
  } else if schema.type == "integer" {
    var s = "Options<Int>(\""
    s += prefix + name
    s += "\", default: [], count: 1, description: \""
    if let d = schema.description {
      s += d.oneLine()
    }
    s += "\"),"
    return s
  } else if let items = schema.items,
    schema.type == "array",
    items.type == "string" {
    var s = "VariadicOption<String>(\""
    s += prefix + name
    s += "\", default: [], description: \""
    if let d = schema.description {
      s += d.oneLine()
    }
    s += "\"),"
    return s
  } else if let items = schema.items,
    schema.type == "array",
    items.type == "any" {
    var s = "VariadicOption<JSONAny>(\""
    s += prefix + name
    s += "\", default: [], description: \""
    if let d = schema.description {
      s += d.oneLine()
    }
    s += "\"),"
    return s
  } else {
    let jsonData = try! JSONEncoder().encode(schema)
    let jsonString = String(data: jsonData, encoding: .utf8)!
    printerr("Unsupported schema for option \(prefix)\(name): \(jsonString)")
    return ""
  }
}

extension Discovery.Method {
  func parametersString() -> String {
    var s = ""
    if let parameters = parameters {
      for p in parameters.sorted(by: { $0.key < $1.key }) {
        if p.value.type == "string" || p.value.type == "integer" {
          if s != "" {
            s += ", "
          }
          s += ParameterPrefix + p.key
        }
      }
    }
    return s
  }
  func requestPropertiesString(requestSchema: Schema?) -> String {
    var s = ""
    if let requestSchema = requestSchema,
      let properties = requestSchema.properties {
      for p in properties.sorted(by: { $0.key < $1.key }) {
        if p.value.type == "string" || p.value.type == "integer" {
          if s != "" {
            s += ", "
          }
          s += RequestObjectPrefix + p.key
        } else if let items = p.value.items,
          p.value.type == "array",
          items.type == "string" {
          if s != "" {
            s += ", "
          }
          s += RequestObjectPrefix + p.key
        } else if let items = p.value.items,
          p.value.type == "array",
          items.type == "any" {
          if s != "" {
            s += ", "
          }
          s += RequestObjectPrefix + p.key
        }
      }
    }
    return s
  }
  
  func Invocation(serviceName: String,
                  resourceName : String,
                  resource: Discovery.Resource,
                  methodName : String,
                  method: Discovery.Method,
                  requestSchema: Schema?) -> String {
    var s = "\n"
    s.addLine(indent:4, "$0.command(")
    s.addLine(indent:6, "\"" + resourceName + "." + methodName + "\",")
    if let parameters = parameters {
      for p in parameters.sorted(by: { $0.key < $1.key }) {
        let d = optionDeclaration(ParameterPrefix, p.key, p.value)
        if d.count > 0 {
          s.addLine(indent:6, d)
        }
      }
    }
    if let requestSchema = requestSchema,
      let properties = requestSchema.properties {
      for p in properties.sorted(by: { $0.key < $1.key }) {
        let d = optionDeclaration(RequestObjectPrefix, p.key, p.value)
        if d.count > 0 {
          s.addLine(indent:6, d)
        }
      }
    }
    if let description = method.description {
      s.addLine(indent:6, "description: \"" + description.oneLine() + "\") {")
    } else {
      s.addLine(indent:6, "description: \"\") {")
    }
    let p = self.parametersString()
    let r = self.requestPropertiesString(requestSchema: requestSchema)
    if p != "" && r != "" {
      s.addLine(indent:6, p + ", " + r + " in")
    } else if p != "" {
      s.addLine(indent:6, p + " in")
    } else if r != "" {
      s.addLine(indent:6, r + " in")
    }
    s.addLine(indent:6, "do {")
    if self.HasParameters() {
      s.addLine(indent:8, "var parameters = " + serviceName.capitalized() + "."
        + self.ParametersTypeName(resource:resourceName, method:methodName) + "()")
      if let parameters = parameters {
        for p in parameters.sorted(by: { $0.key < $1.key }) {
          if p.value.type == "string" || p.value.type == "integer" {
            s.addLine(indent:8, "if let " + ParameterPrefix + p.key + " = " + ParameterPrefix + p.key + ".first {")
            s.addLine(indent:10, "parameters." + p.key + " = " + ParameterPrefix + p.key)
            s.addLine(indent:8, "}")
          } 
        }
      }
    }
    if self.HasRequest() {
      s.addLine(indent:8, "var request = " + serviceName.capitalized() + "."
        + self.RequestTypeName() + "()")
      if let requestSchema = requestSchema,
        let properties = requestSchema.properties {
        for p in properties.sorted(by: { $0.key < $1.key }) {
          if p.value.type == "string" || p.value.type == "integer" {
            s.addLine(indent:8, "if let " + RequestObjectPrefix + p.key + " = " + RequestObjectPrefix + p.key + ".first {")
            s.addLine(indent:10, "request." + p.key + " = " + RequestObjectPrefix + p.key)
            s.addLine(indent:8, "}")
          } else if let items = p.value.items,
            p.value.type == "array",
            items.type == "string" {
            s.addLine(indent:8, "if " + RequestObjectPrefix + p.key + ".count > 0 {")
            s.addLine(indent:10, "request." + p.key + " = " + RequestObjectPrefix + p.key)
            s.addLine(indent:8, "}")
          }
        }
      }
    }
    s.addLine(indent:8, "let sem = DispatchSemaphore(value: 0)")
    let fullMethodName = (resourceName + "_" + methodName)
    
    var invocation = "try " + serviceName + "." + fullMethodName + "("
    if self.HasRequest() {
      if self.HasParameters() {
        invocation += "request: request, parameters:parameters"
      } else {
        invocation += "request:request"
      }
    } else {
      if self.HasParameters() {
        invocation += "parameters:parameters"
      }
    }
    invocation += ") {"
    s.addLine(indent:8, invocation)
    
    var arguments = ""
    if self.HasResponse() {
      arguments += "response, "
    }
    arguments += "error in"
    s.addLine(indent:10, arguments)
    if self.HasResponse() {
      s.addLine(indent:10, "if let response = response { print (\"RESPONSE: \\(response)\") }")
    }
    s.addLine(indent:10, "if let error = error { print (\"ERROR: \\(error)\") }")
    s.addLine(indent:10, "sem.signal()")
    s.addLine(indent:8, "}")
    s.addLine(indent:8, "_ = sem.wait()")
    s.addLine(indent:6, "} catch let error {")
    s.addLine(indent:8, "print (\"Client error: \\(error)\")")
    s.addLine(indent:6, "}")
    s.addLine(indent:4, "}")
    return s
  }
}

extension Discovery.Resource {
  func generate(service: Service, name: String) -> String {
    var s = ""
    if let methods = self.methods {
      for m in methods.sorted(by:  { $0.key < $1.key }) {
        let requestSchema = service.schema(name: m.value.RequestTypeName())
        s += m.value.Invocation(serviceName:service.serviceName(),
                                resourceName:name,
                                resource:self,
                                methodName:m.key,
                                method:m.value,
                                requestSchema:requestSchema
        )
      }
    }
    if let resources = self.resources {
      for r in resources.sorted(by: { $0.key < $1.key }) {
        s += r.value.generate(service: service, name: name + "_" + r.key)
      }
    }
    return s
  }
}

extension Discovery.Service {
  func serviceTitle() -> String {
    return self.name.capitalized()
  }
  func serviceName() -> String {
    return self.name
  }
  func scopes() -> [String] {
    var scopeSet = Set<String>()
    if let resources = resources {
      for r in resources {
        if let methods = r.value.methods {
          for m in methods {
            if let scopes = m.value.scopes {
              for scope in scopes {
                scopeSet.insert(scope)
              }
            }
          }
        }
      }
    }
    return scopeSet.sorted()
  }
  func generate() -> String {
    var s = Discovery.License
    s.addLine()
    for i in
      ["Foundation",
       "Dispatch",
       "OAuth2",
       "GoogleAPIRuntime",
       "Commander"] {
        s.addLine("import " + i)
    }
    s.addLine()
    s.addLine("let CLIENT_CREDENTIALS = \"" + serviceName() + ".json\"")
    s.addLine("let TOKEN = \"" + serviceName() + ".json\"")
    s.addLine()
    s.addLine("func main() throws {")
    let scopes = self.scopes()
    if scopes.count == 1 {
      s.addLine(indent:2, "let scopes = \(scopes)")
    } else {
      s.addLine(indent:2, "let scopes = [")
      s += "    \"" + scopes.joined(separator:"\",\n    \"") + "\"]\n"
    }
    s.addLine()
    s.addLine(indent:2, "guard let tokenProvider = BrowserTokenProvider(credentials:CLIENT_CREDENTIALS, token:TOKEN) else {")
    s.addLine(indent:4, "return")
    s.addLine(indent:2, "}")
    s.addLine(indent:2, "let \(self.serviceName()) = try \(self.serviceTitle())(tokenProvider:tokenProvider)")
    s.addLine()
    s.addLine(indent:2, "let group = Group {")
    s.addLine(indent:4, "$0.command(\"login\", description:\"Log in with browser-based authentication.\") {")
    s.addLine(indent:6, "try tokenProvider.signIn(scopes:scopes)")
    s.addLine(indent:6, "try tokenProvider.saveToken(TOKEN)")
    s.addLine(indent:4, "}")
    if let resources = resources {
      for r in resources.sorted(by: { $0.key < $1.key }) {
        s += r.value.generate(service: self, name: r.key)
      }
    }
    s.addLine(indent:2, "}")
    s.addLine(indent:2, "group.run()")
    s.addLine(indent:0, "}")
    s.addLine()
    s.addLine(indent:0, "do {")
    s.addLine(indent:2, "try main()")
    s.addLine(indent:0, "} catch (let error) {")
    s.addLine(indent:2, "print(\"Application error: \\(error)\")")
    s.addLine(indent:0, "}")
    return s
  }
}

func main() throws {
  let arguments = CommandLine.arguments
  
  let path = arguments[1]
  let data = try Data(contentsOf: URL(fileURLWithPath: path))
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
