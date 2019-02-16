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

let CLIENT_CREDENTIALS = "spotify.json"
let TOKEN = "spotify.json"

func main() throws {
  let scopes = ["user-modify-playback-state", "user-read-birthdate", "user-read-currently-playing", "user-read-email", "user-read-playback-state", "user-read-private"]

  let tokenProvider = BrowserTokenProvider(credentials:CLIENT_CREDENTIALS, token:TOKEN)!
  let spotify = try Spotify(tokenProvider:tokenProvider)

  let group = Group {
    $0.command("login") {
      try tokenProvider.signIn(scopes:scopes)
      try tokenProvider.saveToken(TOKEN)
    }
    $0.command("artists.get") {
      let parameters = Spotify.ArtistsGetParameters()
      let sem = DispatchSemaphore(value: 0)
      try spotify.artists_get(parameters:parameters) {
        response, error in
        if let response = response { print ("RESPONSE: \(response)") }
        if let error = error { print ("ERROR: \(error)") }
        sem.signal()
      }
      _ = sem.wait()
    }
    $0.command("artists.getArtistAlbums") {
      let parameters = Spotify.ArtistsGetArtistAlbumsParameters()
      let sem = DispatchSemaphore(value: 0)
      try spotify.artists_getArtistAlbums(parameters:parameters) {
        response, error in
        if let response = response { print ("RESPONSE: \(response)") }
        if let error = error { print ("ERROR: \(error)") }
        sem.signal()
      }
      _ = sem.wait()
    }
    $0.command("artists.getMultiple") {
      let parameters = Spotify.ArtistsGetMultipleParameters()
      let sem = DispatchSemaphore(value: 0)
      try spotify.artists_getMultiple(parameters:parameters) {
        response, error in
        if let response = response { print ("RESPONSE: \(response)") }
        if let error = error { print ("ERROR: \(error)") }
        sem.signal()
      }
      _ = sem.wait()
    }
    $0.command("player.currentlyPlaying") {
      let parameters = Spotify.PlayerCurrentlyPlayingParameters()
      let sem = DispatchSemaphore(value: 0)
      try spotify.player_currentlyPlaying(parameters:parameters) {
        response, error in
        if let response = response { print ("RESPONSE: \(response)") }
        if let error = error { print ("ERROR: \(error)") }
        sem.signal()
      }
      _ = sem.wait()
    }
    $0.command("player.play") {
      let request = Spotify.PlayRequest()
      let sem = DispatchSemaphore(value: 0)
      try spotify.player_play(request:request) {
        error in
        if let error = error { print ("ERROR: \(error)") }
        sem.signal()
      }
      _ = sem.wait()
    }
    $0.command("users.me") {
      let sem = DispatchSemaphore(value: 0)
      try spotify.users_me() {
        response, error in
        if let response = response { print ("RESPONSE: \(response)") }
        if let error = error { print ("ERROR: \(error)") }
        sem.signal()
      }
      _ = sem.wait()
    }
    $0.command("users.profile") {
      let parameters = Spotify.UsersProfileParameters()
      let sem = DispatchSemaphore(value: 0)
      try spotify.users_profile(parameters:parameters) {
        response, error in
        if let response = response { print ("RESPONSE: \(response)") }
        if let error = error { print ("ERROR: \(error)") }
        sem.signal()
      }
      _ = sem.wait()
    }
  }
  group.run()
}

do {
  try main()
} catch (let error) {
  print("ERROR: \(error)")
}
