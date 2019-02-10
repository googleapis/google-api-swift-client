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
import GoogleAPIRuntime

let CLIENT_CREDENTIALS = "spotify.json"
let TOKEN = "spotify.json"

func main() throws {
  let arguments = CommandLine.arguments
  
  if arguments.count == 1 {
    print("Usage: \(arguments[0]) [options]")
    return
  }
  
  let scopes = ["playlist-read-private",
                "playlist-modify-public",
                "playlist-modify-private",
                "user-library-read",
                "user-library-modify",
                "user-read-private",
                "user-read-email",
                "user-read-playback-state",
                "user-modify-playback-state",
                "user-read-recently-played"]
  
  let tokenProvider = BrowserTokenProvider(credentials:CLIENT_CREDENTIALS, token:TOKEN)!
  let spotify = try Spotify(tokenProvider:tokenProvider)
  
  if arguments[1] == "login" {
    try tokenProvider.signIn(scopes:scopes)
    try tokenProvider.saveToken(TOKEN)
  }
  
  if arguments[1] == "current" {
    let parameters = Spotify.PlayerCurrentlyPlayingParameters()
    let sem = DispatchSemaphore(value: 0)
    try spotify.player_currently_playing(parameters: parameters) {response, error in
      if let response = response { print ("RESPONSE: \(response)") }
      if let error = error { print ("ERROR: \(error)") }
      sem.signal()
    }
    _ = sem.wait()
  }
  
  if arguments[1] == "get" {
    var parameters = Spotify.ArtistsGetParameters()
    parameters.id = "5TOosZsVbwb5O1BOFdcLmw"
    let sem = DispatchSemaphore(value: 0)
    try spotify.artists_get(parameters: parameters) {response, error in
      if let response = response { print ("RESPONSE: \(response)") }
      if let error = error { print ("ERROR: \(error)") }
      sem.signal()
    }
    _ = sem.wait()
  }
  
  if arguments[1] == "play" {
    var request = Spotify.PlayRequest()
    request.uris = ["spotify:track:1ZB2qWsheGabSEYvBYxjKn"]
    let sem = DispatchSemaphore(value: 0)
    try spotify.player_play(request: request) {error in
      if let error = error { print ("ERROR: \(error)") }
      sem.signal()
    }
    _ = sem.wait()
  }
}

do {
  try main()
} catch (let error) {
  print("ERROR: \(error)")
}
