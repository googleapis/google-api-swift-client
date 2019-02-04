import Foundation
import OAuth2

public struct AnalyzeEntitiesRequest : Codable {
  public var `document` : Document?
  public var `encodingType` : String?
}

public struct AnalyzeEntitiesResponse : Codable {
  public var `entities` : [Entity]?
  public var `language` : String?
}

public struct AnalyzeEntitySentimentRequest : Codable {
  public var `document` : Document?
  public var `encodingType` : String?
}

public struct AnalyzeEntitySentimentResponse : Codable {
  public var `entities` : [Entity]?
  public var `language` : String?
}

public struct AnalyzeSentimentRequest : Codable {
  public var `document` : Document?
  public var `encodingType` : String?
}

public struct AnalyzeSentimentResponse : Codable {
  public var `documentSentiment` : Sentiment?
  public var `language` : String?
  public var `sentences` : [Sentence]?
}

public struct AnalyzeSyntaxRequest : Codable {
  public var `document` : Document?
  public var `encodingType` : String?
}

public struct AnalyzeSyntaxResponse : Codable {
  public var `language` : String?
  public var `sentences` : [Sentence]?
  public var `tokens` : [Token]?
}

public struct AnnotateTextRequest : Codable {
  public var `document` : Document?
  public var `encodingType` : String?
  public var `features` : Features?
}

public struct AnnotateTextResponse : Codable {
  public var `categories` : [ClassificationCategory]?
  public var `documentSentiment` : Sentiment?
  public var `entities` : [Entity]?
  public var `language` : String?
  public var `sentences` : [Sentence]?
  public var `tokens` : [Token]?
}

public struct ClassificationCategory : Codable {
  public var `confidence` : Float?
  public var `name` : String?
}

public struct ClassifyTextRequest : Codable {
  public var `document` : Document?
}

public struct ClassifyTextResponse : Codable {
  public var `categories` : [ClassificationCategory]?
}

public struct DependencyEdge : Codable {
  public var `headTokenIndex` : Int?
  public var `label` : String?
}

public struct Document : Codable {
  public var `content` : String?
  public var `gcsContentUri` : String?
  public var `language` : String?
  public var `type` : String?
}

public struct Entity : Codable {
  public var `mentions` : [EntityMention]?
  public var `metadata` : Object?
  public var `name` : String?
  public var `salience` : Float?
  public var `sentiment` : Sentiment?
  public var `type` : String?
}

public struct EntityMention : Codable {
  public var `sentiment` : Sentiment?
  public var `text` : TextSpan?
  public var `type` : String?
}

public struct Features : Codable {
  public var `classifyText` : Bool?
  public var `extractDocumentSentiment` : Bool?
  public var `extractEntities` : Bool?
  public var `extractEntitySentiment` : Bool?
  public var `extractSyntax` : Bool?
}

public struct PartOfSpeech : Codable {
  public var `aspect` : String?
  public var `case` : String?
  public var `form` : String?
  public var `gender` : String?
  public var `mood` : String?
  public var `number` : String?
  public var `person` : String?
  public var `proper` : String?
  public var `reciprocity` : String?
  public var `tag` : String?
  public var `tense` : String?
  public var `voice` : String?
}

public struct Sentence : Codable {
  public var `sentiment` : Sentiment?
  public var `text` : TextSpan?
}

public struct Sentiment : Codable {
  public var `magnitude` : Float?
  public var `score` : Float?
}

public struct Status : Codable {
  public var `code` : Int?
  public var `details` : [Object]?
  public var `message` : String?
}

public struct TextSpan : Codable {
  public var `beginOffset` : Int?
  public var `content` : String?
}

public struct Token : Codable {
  public var `dependencyEdge` : DependencyEdge?
  public var `lemma` : String?
  public var `partOfSpeech` : PartOfSpeech?
  public var `text` : TextSpan?
}

public class Object : Codable {}

public class Language : Service {

  init(tokenProvider: TokenProvider) throws {
    try super.init(tokenProvider, "https://language.googleapis.com/")
  }

  public func documents_analyzeEntities (
    request: AnalyzeEntitiesRequest,
    completion: @escaping (AnalyzeEntitiesResponse?, Error?) -> ()) throws {
       try perform(method: "POST",
                   path: "v1/documents:analyzeEntities",
                   request: request,
                   completion: completion)
  }

  public func documents_analyzeEntitySentiment (
    request: AnalyzeEntitySentimentRequest,
    completion: @escaping (AnalyzeEntitySentimentResponse?, Error?) -> ()) throws {
       try perform(method: "POST",
                   path: "v1/documents:analyzeEntitySentiment",
                   request: request,
                   completion: completion)
  }

  public func documents_analyzeSentiment (
    request: AnalyzeSentimentRequest,
    completion: @escaping (AnalyzeSentimentResponse?, Error?) -> ()) throws {
       try perform(method: "POST",
                   path: "v1/documents:analyzeSentiment",
                   request: request,
                   completion: completion)
  }

  public func documents_analyzeSyntax (
    request: AnalyzeSyntaxRequest,
    completion: @escaping (AnalyzeSyntaxResponse?, Error?) -> ()) throws {
       try perform(method: "POST",
                   path: "v1/documents:analyzeSyntax",
                   request: request,
                   completion: completion)
  }

  public func documents_annotateText (
    request: AnnotateTextRequest,
    completion: @escaping (AnnotateTextResponse?, Error?) -> ()) throws {
       try perform(method: "POST",
                   path: "v1/documents:annotateText",
                   request: request,
                   completion: completion)
  }

  public func documents_classifyText (
    request: ClassifyTextRequest,
    completion: @escaping (ClassifyTextResponse?, Error?) -> ()) throws {
       try perform(method: "POST",
                   path: "v1/documents:classifyText",
                   request: request,
                   completion: completion)
  }
}

