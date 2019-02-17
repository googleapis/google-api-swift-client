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

    $0.command(
      "artists.get",
      Option("id", default: "", description: "The Spotify ID of the artist."),
      description: "Get an artist.") {
      id in
      var parameters = Spotify.ArtistsGetParameters()
      parameters.id = id
      let sem = DispatchSemaphore(value: 0)
      try spotify.artists_get(parameters:parameters) {
        response, error in
        if let response = response { print ("RESPONSE: \(response)") }
        if let error = error { print ("ERROR: \(error)") }
        sem.signal()
      }
      _ = sem.wait()
    }

    $0.command(
      "artists.getArtistAlbums",
      Option("id", default: "", description: "The Spotify ID of the artist."),
      Option("include_groups", default: "", description: ""),
      Option("market", default: "", description: ""),
      description: "Get an artist's albums.") {
      id, include_groups, market in
      var parameters = Spotify.ArtistsGetArtistAlbumsParameters()
      parameters.id = id
      parameters.include_groups = include_groups
      parameters.market = market
      let sem = DispatchSemaphore(value: 0)
      try spotify.artists_getArtistAlbums(parameters:parameters) {
        response, error in
        if let response = response { print ("RESPONSE: \(response)") }
        if let error = error { print ("ERROR: \(error)") }
        sem.signal()
      }
      _ = sem.wait()
    }

    $0.command(
      "artists.getMultiple",
      Option("ids", default: "", description: "A comma-separated list of artist IDs."),
      description: "Get multiple artists.") {
      ids in
      var parameters = Spotify.ArtistsGetMultipleParameters()
      parameters.ids = ids
      let sem = DispatchSemaphore(value: 0)
      try spotify.artists_getMultiple(parameters:parameters) {
        response, error in
        if let response = response { print ("RESPONSE: \(response)") }
        if let error = error { print ("ERROR: \(error)") }
        sem.signal()
      }
      _ = sem.wait()
    }

    $0.command(
      "player.currentlyPlaying",
      Option("market", default: "", description: "An ISO 3166-1 alpha-2 country code or the string from_token. Provide this parameter if you want to apply Track Relinking."),
      description: "Get the user's currently playing track.") {
      market in
      var parameters = Spotify.PlayerCurrentlyPlayingParameters()
      parameters.market = market
      let sem = DispatchSemaphore(value: 0)
      try spotify.player_currentlyPlaying(parameters:parameters) {
        response, error in
        if let response = response { print ("RESPONSE: \(response)") }
        if let error = error { print ("ERROR: \(error)") }
        sem.signal()
      }
      _ = sem.wait()
    }

    $0.command(
      "player.play",
      description: "Start/resume a user's playback.") {
      var request = Spotify.PlayRequest()
      let sem = DispatchSemaphore(value: 0)
      try spotify.player_play(request:request) {
        error in
        if let error = error { print ("ERROR: \(error)") }
        sem.signal()
      }
      _ = sem.wait()
    }

    $0.command(
      "users.me",
      description: "Get the user's profile.") {
      let sem = DispatchSemaphore(value: 0)
      try spotify.users_me() {
        response, error in
        if let response = response { print ("RESPONSE: \(response)") }
        if let error = error { print ("ERROR: \(error)") }
        sem.signal()
      }
      _ = sem.wait()
    }

    $0.command(
      "users.profile",
      Option("user_id", default: "", description: "The user's Spotify user id."),
      description: "Get a user's profile.") {
      user_id in
      var parameters = Spotify.UsersProfileParameters()
      parameters.user_id = user_id
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

