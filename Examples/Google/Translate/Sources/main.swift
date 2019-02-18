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

let CLIENT_CREDENTIALS = "translate.json"
let TOKEN = "translate.json"

func main() throws {
  let scopes = [
    "https://www.googleapis.com/auth/cloud-platform",
    "https://www.googleapis.com/auth/cloud-translation"]

  guard let tokenProvider = BrowserTokenProvider(credentials:CLIENT_CREDENTIALS, token:TOKEN) else {
    return
  }
  let translate = try Translate(tokenProvider:tokenProvider)

  let group = Group {
    $0.command("login", description:"Log in with browser-based authentication.") {
      try tokenProvider.signIn(scopes:scopes)
      try tokenProvider.saveToken(TOKEN)
    }

    $0.command(
      "detections.detect",
      VariadicOption<String>("q", default: [], description: "The input text upon which to perform language detection. Repeat this parameter to perform language detection on multiple text inputs."),
      description: "Detects the language of text within a request.") {
      q in
      do {
        var request = Translate.DetectLanguageRequest()
        if q.count > 0 {
          request.q = q
        }
        let sem = DispatchSemaphore(value: 0)
        try translate.detections_detect(request:request) {
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
      "detections.list",
      Options<String>("q", default: [], count: 1, description: "The input text upon which to perform language detection. Repeat this parameter to perform language detection on multiple text inputs."),
      description: "Detects the language of text within a request.") {
      q in
      do {
        var parameters = Translate.DetectionsListParameters()
        if let q = q.first {
          parameters.q = q
        }
        let sem = DispatchSemaphore(value: 0)
        try translate.detections_list(parameters:parameters) {
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
      "languages.list",
      Options<String>("model", default: [], count: 1, description: "The model type for which supported languages should be returned."),
      Options<String>("target", default: [], count: 1, description: "The language to use to return localized, human readable names of supported languages."),
      description: "Returns a list of supported languages for translation.") {
      model, target in
      do {
        var parameters = Translate.LanguagesListParameters()
        if let model = model.first {
          parameters.model = model
        }
        if let target = target.first {
          parameters.target = target
        }
        let sem = DispatchSemaphore(value: 0)
        try translate.languages_list(parameters:parameters) {
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
      "translations.list",
      Options<String>("cid", default: [], count: 1, description: "The customization id for translate"),
      Options<String>("format", default: [], count: 1, description: "The format of the source text, in either HTML (default) or plain-text. A value of 'html' indicates HTML and a value of 'text' indicates plain-text."),
      Options<String>("model", default: [], count: 1, description: "The `model` type requested for this translation. Valid values are listed in public documentation."),
      Options<String>("q", default: [], count: 1, description: "The input text to translate. Repeat this parameter to perform translation operations on multiple text inputs."),
      Options<String>("source", default: [], count: 1, description: "The language of the source text, set to one of the language codes listed in Language Support. If the source language is not specified, the API will attempt to identify the source language automatically and return it within the response."),
      Options<String>("target", default: [], count: 1, description: "The language to use for translation of the input text, set to one of the language codes listed in Language Support."),
      description: "Translates input text, returning translated text.") {
      cid, format, model, q, source, target in
      do {
        var parameters = Translate.TranslationsListParameters()
        if let cid = cid.first {
          parameters.cid = cid
        }
        if let format = format.first {
          parameters.format = format
        }
        if let model = model.first {
          parameters.model = model
        }
        if let q = q.first {
          parameters.q = q
        }
        if let source = source.first {
          parameters.source = source
        }
        if let target = target.first {
          parameters.target = target
        }
        let sem = DispatchSemaphore(value: 0)
        try translate.translations_list(parameters:parameters) {
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
      "translations.translate",
      Options<String>("format", default: [], count: 1, description: "The format of the source text, in either HTML (default) or plain-text. A value of 'html' indicates HTML and a value of 'text' indicates plain-text."),
      Options<String>("model", default: [], count: 1, description: "The `model` type requested for this translation. Valid values are listed in public documentation."),
      VariadicOption<String>("q", default: [], description: "The input text to translate. Repeat this parameter to perform translation operations on multiple text inputs."),
      Options<String>("source", default: [], count: 1, description: "The language of the source text, set to one of the language codes listed in Language Support. If the source language is not specified, the API will attempt to identify the source language automatically and return it within the response."),
      Options<String>("target", default: [], count: 1, description: "The language to use for translation of the input text, set to one of the language codes listed in Language Support."),
      description: "Translates input text, returning translated text.") {
      format, model, q, source, target in
      do {
        var request = Translate.TranslateTextRequest()
        if let format = format.first {
          request.format = format
        }
        if let model = model.first {
          request.model = model
        }
        if q.count > 0 {
          request.q = q
        }
        if let source = source.first {
          request.source = source
        }
        if let target = target.first {
          request.target = target
        }
        let sem = DispatchSemaphore(value: 0)
        try translate.translations_translate(request:request) {
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

