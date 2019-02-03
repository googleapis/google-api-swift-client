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
import Dispatch
import OAuth2

let USE_SERVICE_ACCOUNT = false
let SERVICE_ACCOUNT_CREDENTIALS = ".credentials/service_account.json"

let CLIENT_CREDENTIALS = "google.json"
let TOKEN = "google.json"

let content = "Organize the world's information and make it universally accessible and useful."

func main() throws {
  let arguments = CommandLine.arguments
  
  if arguments.count == 1 {
    print("Usage: \(arguments[0]) [options]")
    return
  }
  
  let scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  
  var tokenProvider : TokenProvider
  #if os(OSX)
  tokenProvider = BrowserTokenProvider(credentials:CLIENT_CREDENTIALS, token:TOKEN)!
  #else
  tokenProvider = DefaultTokenProvider(scopes:scopes)!
  #endif
  
  if USE_SERVICE_ACCOUNT {
    if #available(OSX 10.12, *) {
      let homeURL = FileManager.default.homeDirectoryForCurrentUser
      let credentialsURL = homeURL.appendingPathComponent(SERVICE_ACCOUNT_CREDENTIALS)
      tokenProvider = ServiceAccountTokenProvider(credentialsURL:credentialsURL,
                                                  scopes:scopes)!
    } else {
      print("This sample requires OSX 10.12 or later.")
    }
  }
  
  let language = try Language(tokenProvider:tokenProvider)
  
  if arguments[1] == "login" {
    #if os(OSX)
    let browserTokenProvider = tokenProvider as! BrowserTokenProvider
    try browserTokenProvider.signIn(scopes:scopes)
    try browserTokenProvider.saveToken(TOKEN)
    #endif
  }
  
  var document = Document(content: content,
                          gcsContentUri: nil,
                          language: "en",
                          type: "PLAIN_TEXT")
  
  if arguments.count > 2 {
    let path = arguments[2]
    let data = try Data(contentsOf: URL(fileURLWithPath: path))
    document.content = String(data:data, encoding:.utf8)
  }

  if arguments[1] == "analyzeEntities" {
    let request = AnalyzeEntitiesRequest(document: document,
                                         encodingType: "UTF8")
    let sem = DispatchSemaphore(value: 0)
    try language.documents_analyzeEntities(request: request) {response, error in
      print(String(describing:response))
      print(String(describing:error))
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
  }
  
  if arguments[1] == "analyzeEntitySentiment" {
    let request = AnalyzeEntitySentimentRequest(document: document,
                                                encodingType: "UTF8")
    let sem = DispatchSemaphore(value: 0)
    try language.documents_analyzeEntitySentiment(request: request) {response, error in
      print(String(describing:response))
      print(String(describing:error))
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
  }
  
  if arguments[1] == "analyzeSentiment" {
    let request = AnalyzeSentimentRequest(document: document,
                                          encodingType: "UTF8")
    let sem = DispatchSemaphore(value: 0)
    try language.documents_analyzeSentiment(request: request) {response, error in
      print(String(describing:response))
      print(String(describing:error))
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
  }
  
  if arguments[1] == "analyzeSyntax" {
    let request = AnalyzeSyntaxRequest(document: document,
                                       encodingType: "UTF8")
    let sem = DispatchSemaphore(value: 0)
    try language.documents_analyzeSyntax(request: request) {response, error in
      print(String(describing:response))
      print(String(describing:error))
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
  }
  
  if arguments[1] == "annotateText" {
    let features = Features(classifyText: true,
                            extractDocumentSentiment:true,
                            extractEntities:true,
                            extractEntitySentiment:true,
                            extractSyntax:true)
    let request = AnnotateTextRequest(document: document,
                                      encodingType: "UTF8",
                                      features: features)
    let sem = DispatchSemaphore(value: 0)
    try language.documents_annotateText(request: request) {response, error in
      print(String(describing:response))
      print(String(describing:error))
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
  }
  
  if arguments[1] == "classifyText" {
    let request = ClassifyTextRequest(document: document)
    let sem = DispatchSemaphore(value: 0)
    try language.documents_classifyText(request: request) {response, error in
      print(String(describing:response))
      print(String(describing:error))
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
  }
}

do {
  try main()
} catch (let error) {
  print("ERROR: \(error)")
}
