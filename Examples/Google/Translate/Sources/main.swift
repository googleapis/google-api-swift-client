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
      VariadicOption<String>("r_q", default: [], description: "The input text upon which to perform language detection. Repeat this parameter to perform language detection on multiple text inputs."),
      description: "Detects the language of text within a request.") {
      r_q in
      do {
        var request = Translate.DetectLanguageRequest()
        if r_q.count > 0 {
          request.q = r_q
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
      Options<String>("p_q", default: [], count: 1, description: "The input text upon which to perform language detection. Repeat this parameter to perform language detection on multiple text inputs."),
      description: "Detects the language of text within a request.") {
      p_q in
      do {
        var parameters = Translate.DetectionsListParameters()
        if let p_q = p_q.first {
          parameters.q = p_q
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
      Options<String>("p_model", default: [], count: 1, description: "The model type for which supported languages should be returned."),
      Options<String>("p_target", default: [], count: 1, description: "The language to use to return localized, human readable names of supported languages."),
      description: "Returns a list of supported languages for translation.") {
      p_model, p_target in
      do {
        var parameters = Translate.LanguagesListParameters()
        if let p_model = p_model.first {
          parameters.model = p_model
        }
        if let p_target = p_target.first {
          parameters.target = p_target
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
      Options<String>("p_cid", default: [], count: 1, description: "The customization id for translate"),
      Options<String>("p_format", default: [], count: 1, description: "The format of the source text, in either HTML (default) or plain-text. A value of 'html' indicates HTML and a value of 'text' indicates plain-text."),
      Options<String>("p_model", default: [], count: 1, description: "The `model` type requested for this translation. Valid values are listed in public documentation."),
      Options<String>("p_q", default: [], count: 1, description: "The input text to translate. Repeat this parameter to perform translation operations on multiple text inputs."),
      Options<String>("p_source", default: [], count: 1, description: "The language of the source text, set to one of the language codes listed in Language Support. If the source language is not specified, the API will attempt to identify the source language automatically and return it within the response."),
      Options<String>("p_target", default: [], count: 1, description: "The language to use for translation of the input text, set to one of the language codes listed in Language Support."),
      description: "Translates input text, returning translated text.") {
      p_cid, p_format, p_model, p_q, p_source, p_target in
      do {
        var parameters = Translate.TranslationsListParameters()
        if let p_cid = p_cid.first {
          parameters.cid = p_cid
        }
        if let p_format = p_format.first {
          parameters.format = p_format
        }
        if let p_model = p_model.first {
          parameters.model = p_model
        }
        if let p_q = p_q.first {
          parameters.q = p_q
        }
        if let p_source = p_source.first {
          parameters.source = p_source
        }
        if let p_target = p_target.first {
          parameters.target = p_target
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
      Options<String>("r_format", default: [], count: 1, description: "The format of the source text, in either HTML (default) or plain-text. A value of 'html' indicates HTML and a value of 'text' indicates plain-text."),
      Options<String>("r_model", default: [], count: 1, description: "The `model` type requested for this translation. Valid values are listed in public documentation."),
      VariadicOption<String>("r_q", default: [], description: "The input text to translate. Repeat this parameter to perform translation operations on multiple text inputs."),
      Options<String>("r_source", default: [], count: 1, description: "The language of the source text, set to one of the language codes listed in Language Support. If the source language is not specified, the API will attempt to identify the source language automatically and return it within the response."),
      Options<String>("r_target", default: [], count: 1, description: "The language to use for translation of the input text, set to one of the language codes listed in Language Support."),
      description: "Translates input text, returning translated text.") {
      r_format, r_model, r_q, r_source, r_target in
      do {
        var request = Translate.TranslateTextRequest()
        if let r_format = r_format.first {
          request.format = r_format
        }
        if let r_model = r_model.first {
          request.model = r_model
        }
        if r_q.count > 0 {
          request.q = r_q
        }
        if let r_source = r_source.first {
          request.source = r_source
        }
        if let r_target = r_target.first {
          request.target = r_target
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

