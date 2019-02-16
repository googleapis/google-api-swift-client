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
import OAuth2
import GoogleAPIRuntime

public class Spotify : Service {

  init(tokenProvider: TokenProvider) throws {
    try super.init(tokenProvider, "https://api.spotify.com/v1/")
  }

  public class Object : Codable {}

  public struct AlbumFull : Codable {
    public var `album_group` : String?
    public var `album_type` : String?
    public var `artists` : [ArtistSimplified]?
    public var `available_markets` : [String]?
    public var `copyrights` : [Copyright]?
    public var `external_ids` : ExternalIds?
    public var `external_urls` : ExternalUrls?
    public var `genres` : [String]?
    public var `href` : String?
    public var `id` : String?
    public var `images` : [Image]?
    public var `label` : String?
    public var `name` : String?
    public var `popularity` : Int?
    public var `release_date` : String?
    public var `release_date_precision` : String?
    public var `restrictions` : Restrictions?
    public var `tracks` : [TrackSimplified]?
    public var `type` : String?
    public var `uri` : String?
  }

  public struct AlbumSimplified : Codable {
    public var `album_group` : String?
    public var `album_type` : String?
    public var `artists` : [ArtistSimplified]?
    public var `available_markets` : [String]?
    public var `external_urls` : ExternalUrls?
    public var `href` : String?
    public var `id` : String?
    public var `images` : [Image]?
    public var `name` : String?
    public var `release_date` : String?
    public var `release_date_precision` : String?
    public var `restrictions` : Restrictions?
    public var `type` : String?
    public var `uri` : String?
  }

  public struct ArrayOfArtistFull : Codable {
    public var `artists` : [ArtistFull]?
  }

  public struct ArtistFull : Codable {
    public var `external_urls` : ExternalUrls?
    public var `followers` : Followers?
    public var `genres` : [String]?
    public var `href` : String?
    public var `id` : String?
    public var `images` : [Image]?
    public var `name` : String?
    public var `popularity` : Int?
    public var `type` : String?
    public var `uri` : String?
  }

  public struct ArtistSimplified : Codable {
    public var `external_urls` : ExternalUrls?
    public var `href` : String?
    public var `id` : String?
    public var `name` : String?
    public var `type` : String?
    public var `uri` : String?
  }

  public struct Context : Codable {
    public var `external_urls` : ExternalUrls?
    public var `href` : String?
    public var `type` : String?
    public var `uri` : String?
  }

  public struct Copyright : Codable {
    public var `text` : String?
    public var `type` : String?
  }

  public struct CurrentlyPlaying : Codable {
    public var `context` : Context?
    public var `currently_playing_type` : String?
    public var `is_playing` : Bool?
    public var `item` : TrackFull?
    public var `progress_ms` : Int?
    public var `timestamp` : Int?
  }

  public struct ExternalIds : Codable {
  }

  public struct ExternalUrls : Codable {
  }

  public struct Followers : Codable {
    public var `href` : String?
    public var `total` : Int?
  }

  public struct Image : Codable {
    public var `height` : Int?
    public var `url` : String?
    public var `width` : Int?
  }

  public struct Offset : Codable {
    public var `position` : Int?
    public var `uri` : String?
  }

  public struct PageOfAlbumSimplified : Codable {
    public var `href` : String?
    public var `items` : [AlbumSimplified]?
    public var `limit` : Int?
    public var `next` : String?
    public var `offset` : Int?
    public var `previous` : String?
    public var `total` : Int?
  }

  public struct PlayRequest : Codable {
    public var `context_uri` : String?
    public var `offset` : Offset?
    public var `position_ms` : Int?
    public var `uris` : [String]?
  }

  public struct Restrictions : Codable {
  }

  public struct TrackFull : Codable {
    public var `album` : AlbumSimplified?
    public var `artists` : [ArtistSimplified]?
    public var `available_markets` : [String]?
    public var `disc_number` : Int?
    public var `duration_ms` : Int?
    public var `explicit` : Bool?
    public var `external_ids` : ExternalIds?
    public var `external_urls` : ExternalUrls?
    public var `href` : String?
    public var `id` : String?
    public var `is_local` : Bool?
    public var `is_playable` : Bool?
    public var `linked_from` : TrackLink?
    public var `name` : String?
    public var `popularity` : Int?
    public var `preview_url` : String?
    public var `restriction` : Restrictions?
    public var `track_number` : Int?
    public var `type` : String?
    public var `uri` : String?
  }

  public struct TrackLink : Codable {
    public var `external_urls` : ExternalUrls?
    public var `href` : String?
    public var `id` : String?
    public var `type` : String?
    public var `uri` : String?
  }

  public struct TrackSimplified : Codable {
    public var `artists` : [ArtistSimplified]?
    public var `available_markets` : [String]?
    public var `disc_number` : Int?
    public var `duration_ms` : Int?
    public var `explicit` : Bool?
    public var `external_urls` : ExternalUrls?
    public var `href` : String?
    public var `id` : String?
    public var `is_local` : Bool?
    public var `is_playable` : Bool?
    public var `linked_from` : TrackLink?
    public var `name` : String?
    public var `preview_url` : String?
    public var `restriction` : Restrictions?
    public var `track_number` : Int?
    public var `type` : String?
    public var `uri` : String?
  }

  public struct User : Codable {
    public var `birthdate` : String?
    public var `country` : String?
    public var `display_name` : String?
    public var `email` : String?
    public var `external_urls` : ExternalUrls?
    public var `followers` : Followers?
    public var `href` : String?
    public var `id` : String?
    public var `images` : [Image]?
    public var `product` : String?
    public var `type` : String?
    public var `uri` : String?
  }

  public struct ArtistsGetParameters : Parameterizable {
    public var id : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["id"]
    }
  }

  public func artists_get (
    parameters: ArtistsGetParameters,
    completion: @escaping (ArtistFull?, Error?) -> ()) throws {
       try perform(method: "GET",
                   path: "artists/{id}",
                   parameters: parameters,
                   completion: completion)
  }

  public struct ArtistsGetArtistAlbumsParameters : Parameterizable {
    public var id : String?
    public var include_groups : String?
    public var limit : Int?
    public var market : String?
    public var offset : Int?
    public func queryParameters() -> [String] {
      return ["include_groups","limit","market","offset"]
    }
    public func pathParameters() -> [String] {
      return ["id"]
    }
  }

  public func artists_getArtistAlbums (
    parameters: ArtistsGetArtistAlbumsParameters,
    completion: @escaping (PageOfAlbumSimplified?, Error?) -> ()) throws {
       try perform(method: "GET",
                   path: "artists/{id}/albums",
                   parameters: parameters,
                   completion: completion)
  }

  public struct ArtistsGetMultipleParameters : Parameterizable {
    public var ids : String?
    public func queryParameters() -> [String] {
      return ["ids"]
    }
    public func pathParameters() -> [String] {
      return []
    }
  }

  public func artists_getMultiple (
    parameters: ArtistsGetMultipleParameters,
    completion: @escaping (ArrayOfArtistFull?, Error?) -> ()) throws {
       try perform(method: "GET",
                   path: "artists",
                   parameters: parameters,
                   completion: completion)
  }

  public struct PlayerCurrentlyPlayingParameters : Parameterizable {
    public var market : String?
    public func queryParameters() -> [String] {
      return ["market"]
    }
    public func pathParameters() -> [String] {
      return []
    }
  }

  public func player_currentlyPlaying (
    parameters: PlayerCurrentlyPlayingParameters,
    completion: @escaping (CurrentlyPlaying?, Error?) -> ()) throws {
       try perform(method: "GET",
                   path: "me/player/currently-playing",
                   parameters: parameters,
                   completion: completion)
  }

  public func player_play (
    request: PlayRequest,
    completion: @escaping (Error?) -> ()) throws {
       try perform(method: "PUT",
                   path: "me/player/play",
                   request: request,
                   completion: completion)
  }

  public func users_me (
    completion: @escaping (User?, Error?) -> ()) throws {
       try perform(method: "GET",
                   path: "me",
                   completion: completion)
  }

  public struct UsersProfileParameters : Parameterizable {
    public var user_id : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["user_id"]
    }
  }

  public func users_profile (
    parameters: UsersProfileParameters,
    completion: @escaping (User?, Error?) -> ()) throws {
       try perform(method: "GET",
                   path: "users/{user_id}",
                   parameters: parameters,
                   completion: completion)
  }
}

