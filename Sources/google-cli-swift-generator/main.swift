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

  func Invocation(service: String, resource: String, method: String) -> String {
    var s = "\n"
    s += "    $0.command(\"" + resource + "." + method + "\") {\n"
    if self.HasParameters() {
      s += "      let parameters = " + service.capitalized() + "."
        + self.ParametersTypeName(resource:resource, method:method) + "()\n"
    }
    if self.HasRequest() {
      s += "      let request = " + service.capitalized() + "."
        + self.RequestTypeName() + "()\n"
    }
    s += "      let sem = DispatchSemaphore(value: 0)\n"
    let methodName = (resource + "_" + method)
    s += "      try " + service + "." + methodName + "("
    if self.HasRequest() {
      if self.HasParameters() {
        s += "request: request, parameters:parameters"
      } else {
        s += "request:request"
      }
    } else {
      if self.HasParameters() {
        s += "parameters:parameters"
      }
    }
    s += ") {\n"
    s += "        "
    if self.HasResponse() {
      s += "response, "
    }
    s += "error in\n"
    if self.HasResponse() {
        s += "        if let response = response { print (\"RESPONSE: \\(response)\") }\n"
    }
    s += "        if let error = error { print (\"ERROR: \\(error)\") }"
    s += """

        sem.signal()
      }
      _ = sem.wait()
    }
"""
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
    s += "\n"
    s += "import Foundation\n"
    s += "import Dispatch\n"
    s += "import OAuth2\n"
    s += "import GoogleAPIRuntime\n"
    s += "import Commander\n"

    s += "\n"

    s += "let CLIENT_CREDENTIALS = \"" + serviceName() + ".json\"\n"
    s += "let TOKEN = \"" + serviceName() + ".json\"\n"
    s += "\n"

    s += """
    func main() throws {
      let scopes = \(scopes())

      let tokenProvider = BrowserTokenProvider(credentials:CLIENT_CREDENTIALS, token:TOKEN)!
      let \(self.serviceName()) = try \(self.serviceTitle())(tokenProvider:tokenProvider)

      let group = Group {
        $0.command("login") {
          try tokenProvider.signIn(scopes:scopes)
          try tokenProvider.saveToken(TOKEN)
        }
    """

    if let resources = resources {
      for r in resources.sorted(by:  { $0.key < $1.key }) {
        let methods = r.value.methods
        for m in methods.sorted(by:  { $0.key < $1.key }) {
          s += m.value.Invocation(service:self.serviceName(), resource:r.key, method:m.key)
        }
      }
    }
    s += """

      }
      group.run()
    }

    do {
      try main()
    } catch (let error) {
      print("ERROR: \\(error)")
    }
    """
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
