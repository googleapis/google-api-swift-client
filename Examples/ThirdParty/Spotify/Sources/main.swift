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
      Options<String>("id", default: [], count: 1, description: "The Spotify ID of the artist."),
      description: "Get an artist.") {
      id in
      do {
        var parameters = Spotify.ArtistsGetParameters()
        if let id = id.first {
          parameters.id = id
        }
        let sem = DispatchSemaphore(value: 0)
        try spotify.artists_get(parameters:parameters) {
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
      "artists.getArtistAlbums",
      Options<String>("id", default: [], count: 1, description: "The Spotify ID of the artist."),
      Options<String>("include_groups", default: [], count: 1, description: ""),
      Options<String>("market", default: [], count: 1, description: ""),
      description: "Get an artist's albums.") {
      id, include_groups, market in
      do {
        var parameters = Spotify.ArtistsGetArtistAlbumsParameters()
        if let id = id.first {
          parameters.id = id
        }
        if let include_groups = include_groups.first {
          parameters.include_groups = include_groups
        }
        if let market = market.first {
          parameters.market = market
        }
        let sem = DispatchSemaphore(value: 0)
        try spotify.artists_getArtistAlbums(parameters:parameters) {
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
      "artists.getMultiple",
      Options<String>("ids", default: [], count: 1, description: "A comma-separated list of artist IDs."),
      description: "Get multiple artists.") {
      ids in
      do {
        var parameters = Spotify.ArtistsGetMultipleParameters()
        if let ids = ids.first {
          parameters.ids = ids
        }
        let sem = DispatchSemaphore(value: 0)
        try spotify.artists_getMultiple(parameters:parameters) {
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
      "player.currentlyPlaying",
      Options<String>("market", default: [], count: 1, description: "An ISO 3166-1 alpha-2 country code or the string from_token. Provide this parameter if you want to apply Track Relinking."),
      description: "Get the user's currently playing track.") {
      market in
      do {
        var parameters = Spotify.PlayerCurrentlyPlayingParameters()
        if let market = market.first {
          parameters.market = market
        }
        let sem = DispatchSemaphore(value: 0)
        try spotify.player_currentlyPlaying(parameters:parameters) {
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
      "player.play",
      description: "Start/resume a user's playback.") {
      do {
        var request = Spotify.PlayRequest()
        let sem = DispatchSemaphore(value: 0)
        try spotify.player_play(request:request) {
          error in
          if let error = error { print ("ERROR: \(error)") }
          sem.signal()
        }
        _ = sem.wait()
      } catch let error {
        print ("Client error: \(error)")
      }
    }

    $0.command(
      "users.me",
      description: "Get the user's profile.") {
      do {
        let sem = DispatchSemaphore(value: 0)
        try spotify.users_me() {
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
      "users.profile",
      Options<String>("user_id", default: [], count: 1, description: "The user's Spotify user id."),
      description: "Get a user's profile.") {
      user_id in
      do {
        var parameters = Spotify.UsersProfileParameters()
        if let user_id = user_id.first {
          parameters.user_id = user_id
        }
        let sem = DispatchSemaphore(value: 0)
        try spotify.users_profile(parameters:parameters) {
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

