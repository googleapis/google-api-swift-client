import Foundation
import OAuth2

public class Translate : Service {

  init(tokenProvider: TokenProvider) throws {
    try super.init(tokenProvider, "https://translation.googleapis.com/language/translate/")
  }

  public class Object : Codable {}

  public struct DetectLanguageRequest : Codable {
    public var `q` : [String]?
  }

  public struct DetectionsListResponse : Codable {
    public var `detections` : [DetectionsResource]?
  }

  public typealias DetectionsResource = [DetectionsResourceItem]

  public struct DetectionsResourceItem : Codable {
    public var `confidence` : Float?
    public var `isReliable` : Bool?
    public var `language` : String?
}

  public struct GetSupportedLanguagesRequest : Codable {
    public var `target` : String?
  }

  public struct LanguagesListResponse : Codable {
    public var `languages` : [LanguagesResource]?
  }

  public struct LanguagesResource : Codable {
    public var `language` : String?
    public var `name` : String?
  }

  public struct TranslateTextRequest : Codable {
    public var `format` : String?
    public var `model` : String?
    public var `q` : [String]?
    public var `source` : String?
    public var `target` : String?
  }

  public struct TranslationsListResponse : Codable {
    public var `translations` : [TranslationsResource]?
  }

  public struct TranslationsResource : Codable {
    public var `detectedSourceLanguage` : String?
    public var `model` : String?
    public var `translatedText` : String?
  }

  public func detections_detect (
    request: DetectLanguageRequest,
    completion: @escaping (DetectionsListResponse?, Error?) -> ()) throws {
       try perform(method: "POST",
                   path: "v2/detect",
                   request: request,
                   completion: completion)
  }

  public struct DetectionsListParameters : Parameterizable {
    public var q : String?
    public func queryParameters() -> [String] {
      return [
        "q",
        ]
    }
    public func pathParameters() -> [String] {
      return [
        ]
    }
  }

  public func detections_list (
    parameters: DetectionsListParameters,
    completion: @escaping (DetectionsListResponse?, Error?) -> ()) throws {
       try perform(method: "GET",
                   path: "v2/detect",
                   parameters: parameters,
                   completion: completion)
  }

  public struct LanguagesListParameters : Parameterizable {
    public var model : String?
    public var target : String?
    public func queryParameters() -> [String] {
      return [
        "model",
        "target",
        ]
    }
    public func pathParameters() -> [String] {
      return [
        ]
    }
  }

  public func languages_list (
    parameters: LanguagesListParameters,
    completion: @escaping (LanguagesListResponse?, Error?) -> ()) throws {
       try perform(method: "GET",
                   path: "v2/languages",
                   parameters: parameters,
                   completion: completion)
  }

  public struct TranslationsListParameters : Parameterizable {
    public var cid : String?
    public var format : String?
    public var model : String?
    public var q : String?
    public var source : String?
    public var target : String?
    public func queryParameters() -> [String] {
      return [
        "cid",
        "format",
        "model",
        "q",
        "source",
        "target",
        ]
    }
    public func pathParameters() -> [String] {
      return [
        ]
    }
  }

  public func translations_list (
    parameters: TranslationsListParameters,
    completion: @escaping (TranslationsListResponse?, Error?) -> ()) throws {
       try perform(method: "GET",
                   path: "v2",
                   parameters: parameters,
                   completion: completion)
  }

  public func translations_translate (
    request: TranslateTextRequest,
    completion: @escaping (TranslationsListResponse?, Error?) -> ()) throws {
       try perform(method: "POST",
                   path: "v2",
                   request: request,
                   completion: completion)
  }
}

