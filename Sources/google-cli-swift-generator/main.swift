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

func optionDeclaration(_ name: String, _ schema: Schema) -> String {
  if schema.type == "string" {
    // https://github.com/kylef/Commander/issues/49
    var s = "Options<String>(\""
    s += name
    s += "\", default: [], count: 1, description: \""
    if let d = schema.description {
      s += d
    }
    s += "\"),"
    return s
  } else {
    return ""
  }
}

extension Discovery.Method {
  func parametersString() -> String {
    var s = ""
    if let parameters = parameters {
      for p in parameters.sorted(by: { $0.key < $1.key }) {
        if p.value.type == "string" {
          if s != "" {
            s += ", "
          }
          s += p.key
        }
      }
    }
    return s
  }

  func Invocation(serviceName: String,
                  resourceName : String,
                  resource: Discovery.Resource,
                  methodName : String,
                  method: Discovery.Method) -> String {
    var s = "\n"
    s.addLine(indent:4, "$0.command(")
    s.addLine(indent:6, "\"" + resourceName + "." + methodName + "\",")
    if let parameters = parameters {
      for p in parameters.sorted(by: { $0.key < $1.key }) {
        let d = optionDeclaration(p.key, p.value)
        if d.count > 0 {
          s.addLine(indent:6, d)
        }
      }
    }
    s.addLine(indent:6, "description: \"" + method.description! + "\") {")
    let p = self.parametersString()
    if p != "" {
      s.addLine(indent:6, p + " in")
    }
    s.addLine(indent:6, "do {")
    if self.HasParameters() {
      s.addLine(indent:8, "var parameters = " + serviceName.capitalized() + "."
        + self.ParametersTypeName(resource:resourceName, method:methodName) + "()")
      if let parameters = parameters {
        for p in parameters.sorted(by: { $0.key < $1.key }) {
          if p.value.type == "string" {
            s.addLine(indent:8, "if let " + p.key + " = " + p.key + ".first {")
            s.addLine(indent:10, "parameters." + p.key + " = " + p.key)
            s.addLine(indent:8, "}")
          }
        }
      }
    }
    if self.HasRequest() {
      s.addLine(indent:8, "var request = " + serviceName.capitalized() + "."
        + self.RequestTypeName() + "()")
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
        let methods = r.value.methods
        for m in methods {
          if let scopes = m.value.scopes {
            for scope in scopes {
              scopeSet.insert(scope)
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
    s.addLine(indent:2, "let scopes = \(scopes())")
    s.addLine()
    s.addLine(indent:2, "let tokenProvider = BrowserTokenProvider(credentials:CLIENT_CREDENTIALS, token:TOKEN)!")
    s.addLine(indent:2, "let \(self.serviceName()) = try \(self.serviceTitle())(tokenProvider:tokenProvider)")
    s.addLine()
    s.addLine(indent:2, "let group = Group {")
    s.addLine(indent:4, "$0.command(\"login\") {")
    s.addLine(indent:6, "try tokenProvider.signIn(scopes:scopes)")
    s.addLine(indent:6, "try tokenProvider.saveToken(TOKEN)")
    s.addLine(indent:4, "}")
    if let resources = resources {
      for r in resources.sorted(by:  { $0.key < $1.key }) {
        let methods = r.value.methods
        for m in methods.sorted(by:  { $0.key < $1.key }) {
          s += m.value.Invocation(serviceName:self.serviceName(),
                                  resourceName:r.key,
                                  resource:r.value,
                                  methodName:m.key,
                                  method:m.value)
        }
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
