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
import Foundation
import Dispatch
import OAuth2
import GoogleAPIRuntime
import Commander

let CLIENT_CREDENTIALS = "language.json"
let TOKEN = "language.json"

func main() throws {
  let scopes = [
    "https://www.googleapis.com/auth/cloud-language",
    "https://www.googleapis.com/auth/cloud-platform"]

  guard let tokenProvider = BrowserTokenProvider(credentials:CLIENT_CREDENTIALS, token:TOKEN) else {
    return
  }
  let language = try Language(tokenProvider:tokenProvider)

  let group = Group {
    $0.command("login", description:"Log in with browser-based authentication.") {
      try tokenProvider.signIn(scopes:scopes)
      try tokenProvider.saveToken(TOKEN)
    }

    $0.command(
      "documents.analyzeEntities",
      Options<String>("r_encodingType", default: [], count: 1, description: "The encoding type used by the API to calculate offsets."),
      description: "Finds named entities (currently proper names and common nouns) in the text along with entity types, salience, mentions for each entity, and other properties.") {
      r_encodingType in
      do {
        var request = Language.AnalyzeEntitiesRequest()
        if let r_encodingType = r_encodingType.first {
          request.encodingType = r_encodingType
        }
        let sem = DispatchSemaphore(value: 0)
        try language.documents_analyzeEntities(request:request) {
          response, error in
          if let response = response { print ("RESPONSE: \(response)") }
          if let error = error { print ("ERROR: \(error)") }
          sem.signal()
        }
        _ = sem.wait()
      } catch let error {
        print ("Client error: \(error)")
      }
    }

    $0.command(
      "documents.analyzeEntitySentiment",
      Options<String>("r_encodingType", default: [], count: 1, description: "The encoding type used by the API to calculate offsets."),
      description: "Finds entities, similar to AnalyzeEntities in the text and analyzes sentiment associated with each entity and its mentions.") {
      r_encodingType in
      do {
        var request = Language.AnalyzeEntitySentimentRequest()
        if let r_encodingType = r_encodingType.first {
          request.encodingType = r_encodingType
        }
        let sem = DispatchSemaphore(value: 0)
        try language.documents_analyzeEntitySentiment(request:request) {
          response, error in
          if let response = response { print ("RESPONSE: \(response)") }
          if let error = error { print ("ERROR: \(error)") }
          sem.signal()
        }
        _ = sem.wait()
      } catch let error {
        print ("Client error: \(error)")
      }
    }

    $0.command(
      "documents.analyzeSentiment",
      Options<String>("r_encodingType", default: [], count: 1, description: "The encoding type used by the API to calculate sentence offsets."),
      description: "Analyzes the sentiment of the provided text.") {
      r_encodingType in
      do {
        var request = Language.AnalyzeSentimentRequest()
        if let r_encodingType = r_encodingType.first {
          request.encodingType = r_encodingType
        }
        let sem = DispatchSemaphore(value: 0)
        try language.documents_analyzeSentiment(request:request) {
          response, error in
          if let response = response { print ("RESPONSE: \(response)") }
          if let error = error { print ("ERROR: \(error)") }
          sem.signal()
        }
        _ = sem.wait()
      } catch let error {
        print ("Client error: \(error)")
      }
    }

    $0.command(
      "documents.analyzeSyntax",
      Options<String>("r_encodingType", default: [], count: 1, description: "The encoding type used by the API to calculate offsets."),
      description: "Analyzes the syntax of the text and provides sentence boundaries and tokenization along with part of speech tags, dependency trees, and other properties.") {
      r_encodingType in
      do {
        var request = Language.AnalyzeSyntaxRequest()
        if let r_encodingType = r_encodingType.first {
          request.encodingType = r_encodingType
        }
        let sem = DispatchSemaphore(value: 0)
        try language.documents_analyzeSyntax(request:request) {
          response, error in
          if let response = response { print ("RESPONSE: \(response)") }
          if let error = error { print ("ERROR: \(error)") }
          sem.signal()
        }
        _ = sem.wait()
      } catch let error {
        print ("Client error: \(error)")
      }
    }

    $0.command(
      "documents.annotateText",
      Options<String>("r_encodingType", default: [], count: 1, description: "The encoding type used by the API to calculate offsets."),
      description: "A convenience method that provides all the features that analyzeSentiment, analyzeEntities, and analyzeSyntax provide in one call.") {
      r_encodingType in
      do {
        var request = Language.AnnotateTextRequest()
        if let r_encodingType = r_encodingType.first {
          request.encodingType = r_encodingType
        }
        let sem = DispatchSemaphore(value: 0)
        try language.documents_annotateText(request:request) {
          response, error in
          if let response = response { print ("RESPONSE: \(response)") }
          if let error = error { print ("ERROR: \(error)") }
          sem.signal()
        }
        _ = sem.wait()
      } catch let error {
        print ("Client error: \(error)")
      }
    }

    $0.command(
      "documents.classifyText",
      description: "Classifies a document into categories.") {
      do {
        var request = Language.ClassifyTextRequest()
        let sem = DispatchSemaphore(value: 0)
        try language.documents_classifyText(request:request) {
          response, error in
          if let response = response { print ("RESPONSE: \(response)") }
          if let error = error { print ("ERROR: \(error)") }
          sem.signal()
        }
        _ = sem.wait()
      } catch let error {
        print ("Client error: \(error)")
      }
    }
  }
  group.run()
}

do {
  try main()
} catch (let error) {
  print("Application error: \(error)")
}

