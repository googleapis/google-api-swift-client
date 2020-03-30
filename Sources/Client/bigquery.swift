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

public class Bigquery : Service {

  public init(tokenProvider: TokenProvider) throws {
    try super.init(tokenProvider, "https://bigquery.googleapis.com/bigquery/v2/")
  }

  public class Object : Codable {}

  public struct AggregateClassificationMetrics : Codable {
    public init (`accuracy`: Double?, `f1Score`: Double?, `logLoss`: Double?, `precision`: Double?, `recall`: Double?, `rocAuc`: Double?, `threshold`: Double?) {
      self.`accuracy` = `accuracy`
      self.`f1Score` = `f1Score`
      self.`logLoss` = `logLoss`
      self.`precision` = `precision`
      self.`recall` = `recall`
      self.`rocAuc` = `rocAuc`
      self.`threshold` = `threshold`
    }
    public var `accuracy` : Double?
    public var `f1Score` : Double?
    public var `logLoss` : Double?
    public var `precision` : Double?
    public var `recall` : Double?
    public var `rocAuc` : Double?
    public var `threshold` : Double?
  }

  public struct Argument : Codable {
    public init (`argumentKind`: String?, `dataType`: StandardSqlDataType?, `mode`: String?, `name`: String?) {
      self.`argumentKind` = `argumentKind`
      self.`dataType` = `dataType`
      self.`mode` = `mode`
      self.`name` = `name`
    }
    public var `argumentKind` : String?
    public var `dataType` : StandardSqlDataType?
    public var `mode` : String?
    public var `name` : String?
  }

  public struct ArimaCoefficients : Codable {
    public init (`autoRegressiveCoefficients`: [Double]?, `interceptCoefficient`: Double?, `movingAverageCoefficients`: [Double]?) {
      self.`autoRegressiveCoefficients` = `autoRegressiveCoefficients`
      self.`interceptCoefficient` = `interceptCoefficient`
      self.`movingAverageCoefficients` = `movingAverageCoefficients`
    }
    public var `autoRegressiveCoefficients` : [Double]?
    public var `interceptCoefficient` : Double?
    public var `movingAverageCoefficients` : [Double]?
  }

  public struct ArimaFittingMetrics : Codable {
    public init (`aic`: Double?, `logLikelihood`: Double?, `variance`: Double?) {
      self.`aic` = `aic`
      self.`logLikelihood` = `logLikelihood`
      self.`variance` = `variance`
    }
    public var `aic` : Double?
    public var `logLikelihood` : Double?
    public var `variance` : Double?
  }

  public struct ArimaModelInfo : Codable {
    public init (`arimaCoefficients`: ArimaCoefficients?, `arimaFittingMetrics`: ArimaFittingMetrics?, `nonSeasonalOrder`: ArimaOrder?) {
      self.`arimaCoefficients` = `arimaCoefficients`
      self.`arimaFittingMetrics` = `arimaFittingMetrics`
      self.`nonSeasonalOrder` = `nonSeasonalOrder`
    }
    public var `arimaCoefficients` : ArimaCoefficients?
    public var `arimaFittingMetrics` : ArimaFittingMetrics?
    public var `nonSeasonalOrder` : ArimaOrder?
  }

  public struct ArimaOrder : Codable {
    public init (`d`: String?, `p`: String?, `q`: String?) {
      self.`d` = `d`
      self.`p` = `p`
      self.`q` = `q`
    }
    public var `d` : String?
    public var `p` : String?
    public var `q` : String?
  }

  public struct ArimaResult : Codable {
    public init (`arimaModelInfo`: [ArimaModelInfo]?, `seasonalPeriods`: [String]?) {
      self.`arimaModelInfo` = `arimaModelInfo`
      self.`seasonalPeriods` = `seasonalPeriods`
    }
    public var `arimaModelInfo` : [ArimaModelInfo]?
    public var `seasonalPeriods` : [String]?
  }

  public struct BigQueryModelTraining : Codable {
    public init (`currentIteration`: Int?, `expectedTotalIterations`: String?) {
      self.`currentIteration` = `currentIteration`
      self.`expectedTotalIterations` = `expectedTotalIterations`
    }
    public var `currentIteration` : Int?
    public var `expectedTotalIterations` : String?
  }

  public struct BigtableColumn : Codable {
    public init (`encoding`: String?, `fieldName`: String?, `onlyReadLatest`: Bool?, `qualifierEncoded`: String?, `qualifierString`: String?, `type`: String?) {
      self.`encoding` = `encoding`
      self.`fieldName` = `fieldName`
      self.`onlyReadLatest` = `onlyReadLatest`
      self.`qualifierEncoded` = `qualifierEncoded`
      self.`qualifierString` = `qualifierString`
      self.`type` = `type`
    }
    public var `encoding` : String?
    public var `fieldName` : String?
    public var `onlyReadLatest` : Bool?
    public var `qualifierEncoded` : String?
    public var `qualifierString` : String?
    public var `type` : String?
  }

  public struct BigtableColumnFamily : Codable {
    public init (`columns`: [BigtableColumn]?, `encoding`: String?, `familyId`: String?, `onlyReadLatest`: Bool?, `type`: String?) {
      self.`columns` = `columns`
      self.`encoding` = `encoding`
      self.`familyId` = `familyId`
      self.`onlyReadLatest` = `onlyReadLatest`
      self.`type` = `type`
    }
    public var `columns` : [BigtableColumn]?
    public var `encoding` : String?
    public var `familyId` : String?
    public var `onlyReadLatest` : Bool?
    public var `type` : String?
  }

  public struct BigtableOptions : Codable {
    public init (`columnFamilies`: [BigtableColumnFamily]?, `ignoreUnspecifiedColumnFamilies`: Bool?, `readRowkeyAsString`: Bool?) {
      self.`columnFamilies` = `columnFamilies`
      self.`ignoreUnspecifiedColumnFamilies` = `ignoreUnspecifiedColumnFamilies`
      self.`readRowkeyAsString` = `readRowkeyAsString`
    }
    public var `columnFamilies` : [BigtableColumnFamily]?
    public var `ignoreUnspecifiedColumnFamilies` : Bool?
    public var `readRowkeyAsString` : Bool?
  }

  public struct BinaryClassificationMetrics : Codable {
    public init (`aggregateClassificationMetrics`: AggregateClassificationMetrics?, `binaryConfusionMatrixList`: [BinaryConfusionMatrix]?, `negativeLabel`: String?, `positiveLabel`: String?) {
      self.`aggregateClassificationMetrics` = `aggregateClassificationMetrics`
      self.`binaryConfusionMatrixList` = `binaryConfusionMatrixList`
      self.`negativeLabel` = `negativeLabel`
      self.`positiveLabel` = `positiveLabel`
    }
    public var `aggregateClassificationMetrics` : AggregateClassificationMetrics?
    public var `binaryConfusionMatrixList` : [BinaryConfusionMatrix]?
    public var `negativeLabel` : String?
    public var `positiveLabel` : String?
  }

  public struct BinaryConfusionMatrix : Codable {
    public init (`accuracy`: Double?, `f1Score`: Double?, `falseNegatives`: String?, `falsePositives`: String?, `positiveClassThreshold`: Double?, `precision`: Double?, `recall`: Double?, `trueNegatives`: String?, `truePositives`: String?) {
      self.`accuracy` = `accuracy`
      self.`f1Score` = `f1Score`
      self.`falseNegatives` = `falseNegatives`
      self.`falsePositives` = `falsePositives`
      self.`positiveClassThreshold` = `positiveClassThreshold`
      self.`precision` = `precision`
      self.`recall` = `recall`
      self.`trueNegatives` = `trueNegatives`
      self.`truePositives` = `truePositives`
    }
    public var `accuracy` : Double?
    public var `f1Score` : Double?
    public var `falseNegatives` : String?
    public var `falsePositives` : String?
    public var `positiveClassThreshold` : Double?
    public var `precision` : Double?
    public var `recall` : Double?
    public var `trueNegatives` : String?
    public var `truePositives` : String?
  }

  public struct BqmlIterationResult : Codable {
    public init (`durationMs`: String?, `evalLoss`: Double?, `index`: Int?, `learnRate`: Double?, `trainingLoss`: Double?) {
      self.`durationMs` = `durationMs`
      self.`evalLoss` = `evalLoss`
      self.`index` = `index`
      self.`learnRate` = `learnRate`
      self.`trainingLoss` = `trainingLoss`
    }
    public var `durationMs` : String?
    public var `evalLoss` : Double?
    public var `index` : Int?
    public var `learnRate` : Double?
    public var `trainingLoss` : Double?
  }

  public struct BqmlTrainingRun : Codable {
    public init (`iterationResults`: [BqmlIterationResult]?, `startTime`: String?, `state`: String?, `trainingOptions`: Object?) {
      self.`iterationResults` = `iterationResults`
      self.`startTime` = `startTime`
      self.`state` = `state`
      self.`trainingOptions` = `trainingOptions`
    }
    public var `iterationResults` : [BqmlIterationResult]?
    public var `startTime` : String?
    public var `state` : String?
    public var `trainingOptions` : Object?
  }

  public struct CategoricalValue : Codable {
    public init (`categoryCounts`: [CategoryCount]?) {
      self.`categoryCounts` = `categoryCounts`
    }
    public var `categoryCounts` : [CategoryCount]?
  }

  public struct CategoryCount : Codable {
    public init (`category`: String?, `count`: String?) {
      self.`category` = `category`
      self.`count` = `count`
    }
    public var `category` : String?
    public var `count` : String?
  }

  public struct Cluster : Codable {
    public init (`centroidId`: String?, `count`: String?, `featureValues`: [FeatureValue]?) {
      self.`centroidId` = `centroidId`
      self.`count` = `count`
      self.`featureValues` = `featureValues`
    }
    public var `centroidId` : String?
    public var `count` : String?
    public var `featureValues` : [FeatureValue]?
  }

  public struct ClusterInfo : Codable {
    public init (`centroidId`: String?, `clusterRadius`: Double?, `clusterSize`: String?) {
      self.`centroidId` = `centroidId`
      self.`clusterRadius` = `clusterRadius`
      self.`clusterSize` = `clusterSize`
    }
    public var `centroidId` : String?
    public var `clusterRadius` : Double?
    public var `clusterSize` : String?
  }

  public struct Clustering : Codable {
    public init (`fields`: [String]?) {
      self.`fields` = `fields`
    }
    public var `fields` : [String]?
  }

  public struct ClusteringMetrics : Codable {
    public init (`clusters`: [Cluster]?, `daviesBouldinIndex`: Double?, `meanSquaredDistance`: Double?) {
      self.`clusters` = `clusters`
      self.`daviesBouldinIndex` = `daviesBouldinIndex`
      self.`meanSquaredDistance` = `meanSquaredDistance`
    }
    public var `clusters` : [Cluster]?
    public var `daviesBouldinIndex` : Double?
    public var `meanSquaredDistance` : Double?
  }

  public struct ConfusionMatrix : Codable {
    public init (`confidenceThreshold`: Double?, `rows`: [Row]?) {
      self.`confidenceThreshold` = `confidenceThreshold`
      self.`rows` = `rows`
    }
    public var `confidenceThreshold` : Double?
    public var `rows` : [Row]?
  }

  public struct CsvOptions : Codable {
    public init (`allowJaggedRows`: Bool?, `allowQuotedNewlines`: Bool?, `encoding`: String?, `fieldDelimiter`: String?, `quote`: String?, `skipLeadingRows`: String?) {
      self.`allowJaggedRows` = `allowJaggedRows`
      self.`allowQuotedNewlines` = `allowQuotedNewlines`
      self.`encoding` = `encoding`
      self.`fieldDelimiter` = `fieldDelimiter`
      self.`quote` = `quote`
      self.`skipLeadingRows` = `skipLeadingRows`
    }
    public var `allowJaggedRows` : Bool?
    public var `allowQuotedNewlines` : Bool?
    public var `encoding` : String?
    public var `fieldDelimiter` : String?
    public var `quote` : String?
    public var `skipLeadingRows` : String?
  }

  public struct DataSplitResult : Codable {
    public init (`evaluationTable`: TableReference?, `trainingTable`: TableReference?) {
      self.`evaluationTable` = `evaluationTable`
      self.`trainingTable` = `trainingTable`
    }
    public var `evaluationTable` : TableReference?
    public var `trainingTable` : TableReference?
  }

  public struct Dataset : Codable {
    public init (`access`: [Object]?, `creationTime`: String?, `datasetReference`: DatasetReference?, `defaultEncryptionConfiguration`: EncryptionConfiguration?, `defaultPartitionExpirationMs`: String?, `defaultTableExpirationMs`: String?, `description`: String?, `etag`: String?, `friendlyName`: String?, `id`: String?, `kind`: String?, `labels`: Object?, `lastModifiedTime`: String?, `location`: String?, `selfLink`: String?) {
      self.`access` = `access`
      self.`creationTime` = `creationTime`
      self.`datasetReference` = `datasetReference`
      self.`defaultEncryptionConfiguration` = `defaultEncryptionConfiguration`
      self.`defaultPartitionExpirationMs` = `defaultPartitionExpirationMs`
      self.`defaultTableExpirationMs` = `defaultTableExpirationMs`
      self.`description` = `description`
      self.`etag` = `etag`
      self.`friendlyName` = `friendlyName`
      self.`id` = `id`
      self.`kind` = `kind`
      self.`labels` = `labels`
      self.`lastModifiedTime` = `lastModifiedTime`
      self.`location` = `location`
      self.`selfLink` = `selfLink`
    }
    public var `access` : [Object]?
    public var `creationTime` : String?
    public var `datasetReference` : DatasetReference?
    public var `defaultEncryptionConfiguration` : EncryptionConfiguration?
    public var `defaultPartitionExpirationMs` : String?
    public var `defaultTableExpirationMs` : String?
    public var `description` : String?
    public var `etag` : String?
    public var `friendlyName` : String?
    public var `id` : String?
    public var `kind` : String?
    public var `labels` : Object?
    public var `lastModifiedTime` : String?
    public var `location` : String?
    public var `selfLink` : String?
  }

  public struct DatasetList : Codable {
    public init (`datasets`: [Object]?, `etag`: String?, `kind`: String?, `nextPageToken`: String?) {
      self.`datasets` = `datasets`
      self.`etag` = `etag`
      self.`kind` = `kind`
      self.`nextPageToken` = `nextPageToken`
    }
    public var `datasets` : [Object]?
    public var `etag` : String?
    public var `kind` : String?
    public var `nextPageToken` : String?
  }

  public struct DatasetReference : Codable {
    public init (`datasetId`: String?, `projectId`: String?) {
      self.`datasetId` = `datasetId`
      self.`projectId` = `projectId`
    }
    public var `datasetId` : String?
    public var `projectId` : String?
  }

  public struct DestinationTableProperties : Codable {
    public init (`description`: String?, `friendlyName`: String?, `labels`: Object?) {
      self.`description` = `description`
      self.`friendlyName` = `friendlyName`
      self.`labels` = `labels`
    }
    public var `description` : String?
    public var `friendlyName` : String?
    public var `labels` : Object?
  }

  public struct EncryptionConfiguration : Codable {
    public init (`kmsKeyName`: String?) {
      self.`kmsKeyName` = `kmsKeyName`
    }
    public var `kmsKeyName` : String?
  }

  public struct Entry : Codable {
    public init (`itemCount`: String?, `predictedLabel`: String?) {
      self.`itemCount` = `itemCount`
      self.`predictedLabel` = `predictedLabel`
    }
    public var `itemCount` : String?
    public var `predictedLabel` : String?
  }

  public struct ErrorProto : Codable {
    public init (`debugInfo`: String?, `location`: String?, `message`: String?, `reason`: String?) {
      self.`debugInfo` = `debugInfo`
      self.`location` = `location`
      self.`message` = `message`
      self.`reason` = `reason`
    }
    public var `debugInfo` : String?
    public var `location` : String?
    public var `message` : String?
    public var `reason` : String?
  }

  public struct EvaluationMetrics : Codable {
    public init (`binaryClassificationMetrics`: BinaryClassificationMetrics?, `clusteringMetrics`: ClusteringMetrics?, `multiClassClassificationMetrics`: MultiClassClassificationMetrics?, `regressionMetrics`: RegressionMetrics?) {
      self.`binaryClassificationMetrics` = `binaryClassificationMetrics`
      self.`clusteringMetrics` = `clusteringMetrics`
      self.`multiClassClassificationMetrics` = `multiClassClassificationMetrics`
      self.`regressionMetrics` = `regressionMetrics`
    }
    public var `binaryClassificationMetrics` : BinaryClassificationMetrics?
    public var `clusteringMetrics` : ClusteringMetrics?
    public var `multiClassClassificationMetrics` : MultiClassClassificationMetrics?
    public var `regressionMetrics` : RegressionMetrics?
  }

  public struct ExplainQueryStage : Codable {
    public init (`completedParallelInputs`: String?, `computeMsAvg`: String?, `computeMsMax`: String?, `computeRatioAvg`: Double?, `computeRatioMax`: Double?, `endMs`: String?, `id`: String?, `inputStages`: [String]?, `name`: String?, `parallelInputs`: String?, `readMsAvg`: String?, `readMsMax`: String?, `readRatioAvg`: Double?, `readRatioMax`: Double?, `recordsRead`: String?, `recordsWritten`: String?, `shuffleOutputBytes`: String?, `shuffleOutputBytesSpilled`: String?, `slotMs`: String?, `startMs`: String?, `status`: String?, `steps`: [ExplainQueryStep]?, `waitMsAvg`: String?, `waitMsMax`: String?, `waitRatioAvg`: Double?, `waitRatioMax`: Double?, `writeMsAvg`: String?, `writeMsMax`: String?, `writeRatioAvg`: Double?, `writeRatioMax`: Double?) {
      self.`completedParallelInputs` = `completedParallelInputs`
      self.`computeMsAvg` = `computeMsAvg`
      self.`computeMsMax` = `computeMsMax`
      self.`computeRatioAvg` = `computeRatioAvg`
      self.`computeRatioMax` = `computeRatioMax`
      self.`endMs` = `endMs`
      self.`id` = `id`
      self.`inputStages` = `inputStages`
      self.`name` = `name`
      self.`parallelInputs` = `parallelInputs`
      self.`readMsAvg` = `readMsAvg`
      self.`readMsMax` = `readMsMax`
      self.`readRatioAvg` = `readRatioAvg`
      self.`readRatioMax` = `readRatioMax`
      self.`recordsRead` = `recordsRead`
      self.`recordsWritten` = `recordsWritten`
      self.`shuffleOutputBytes` = `shuffleOutputBytes`
      self.`shuffleOutputBytesSpilled` = `shuffleOutputBytesSpilled`
      self.`slotMs` = `slotMs`
      self.`startMs` = `startMs`
      self.`status` = `status`
      self.`steps` = `steps`
      self.`waitMsAvg` = `waitMsAvg`
      self.`waitMsMax` = `waitMsMax`
      self.`waitRatioAvg` = `waitRatioAvg`
      self.`waitRatioMax` = `waitRatioMax`
      self.`writeMsAvg` = `writeMsAvg`
      self.`writeMsMax` = `writeMsMax`
      self.`writeRatioAvg` = `writeRatioAvg`
      self.`writeRatioMax` = `writeRatioMax`
    }
    public var `completedParallelInputs` : String?
    public var `computeMsAvg` : String?
    public var `computeMsMax` : String?
    public var `computeRatioAvg` : Double?
    public var `computeRatioMax` : Double?
    public var `endMs` : String?
    public var `id` : String?
    public var `inputStages` : [String]?
    public var `name` : String?
    public var `parallelInputs` : String?
    public var `readMsAvg` : String?
    public var `readMsMax` : String?
    public var `readRatioAvg` : Double?
    public var `readRatioMax` : Double?
    public var `recordsRead` : String?
    public var `recordsWritten` : String?
    public var `shuffleOutputBytes` : String?
    public var `shuffleOutputBytesSpilled` : String?
    public var `slotMs` : String?
    public var `startMs` : String?
    public var `status` : String?
    public var `steps` : [ExplainQueryStep]?
    public var `waitMsAvg` : String?
    public var `waitMsMax` : String?
    public var `waitRatioAvg` : Double?
    public var `waitRatioMax` : Double?
    public var `writeMsAvg` : String?
    public var `writeMsMax` : String?
    public var `writeRatioAvg` : Double?
    public var `writeRatioMax` : Double?
  }

  public struct ExplainQueryStep : Codable {
    public init (`kind`: String?, `substeps`: [String]?) {
      self.`kind` = `kind`
      self.`substeps` = `substeps`
    }
    public var `kind` : String?
    public var `substeps` : [String]?
  }

  public struct ExternalDataConfiguration : Codable {
    public init (`autodetect`: Bool?, `bigtableOptions`: BigtableOptions?, `compression`: String?, `csvOptions`: CsvOptions?, `googleSheetsOptions`: GoogleSheetsOptions?, `hivePartitioningMode`: String?, `hivePartitioningOptions`: HivePartitioningOptions?, `ignoreUnknownValues`: Bool?, `maxBadRecords`: Int?, `schema`: TableSchema?, `sourceFormat`: String?, `sourceUris`: [String]?) {
      self.`autodetect` = `autodetect`
      self.`bigtableOptions` = `bigtableOptions`
      self.`compression` = `compression`
      self.`csvOptions` = `csvOptions`
      self.`googleSheetsOptions` = `googleSheetsOptions`
      self.`hivePartitioningMode` = `hivePartitioningMode`
      self.`hivePartitioningOptions` = `hivePartitioningOptions`
      self.`ignoreUnknownValues` = `ignoreUnknownValues`
      self.`maxBadRecords` = `maxBadRecords`
      self.`schema` = `schema`
      self.`sourceFormat` = `sourceFormat`
      self.`sourceUris` = `sourceUris`
    }
    public var `autodetect` : Bool?
    public var `bigtableOptions` : BigtableOptions?
    public var `compression` : String?
    public var `csvOptions` : CsvOptions?
    public var `googleSheetsOptions` : GoogleSheetsOptions?
    public var `hivePartitioningMode` : String?
    public var `hivePartitioningOptions` : HivePartitioningOptions?
    public var `ignoreUnknownValues` : Bool?
    public var `maxBadRecords` : Int?
    public var `schema` : TableSchema?
    public var `sourceFormat` : String?
    public var `sourceUris` : [String]?
  }

  public struct FeatureValue : Codable {
    public init (`categoricalValue`: CategoricalValue?, `featureColumn`: String?, `numericalValue`: Double?) {
      self.`categoricalValue` = `categoricalValue`
      self.`featureColumn` = `featureColumn`
      self.`numericalValue` = `numericalValue`
    }
    public var `categoricalValue` : CategoricalValue?
    public var `featureColumn` : String?
    public var `numericalValue` : Double?
  }

  public struct GetQueryResultsResponse : Codable {
    public init (`cacheHit`: Bool?, `errors`: [ErrorProto]?, `etag`: String?, `jobComplete`: Bool?, `jobReference`: JobReference?, `kind`: String?, `numDmlAffectedRows`: String?, `pageToken`: String?, `rows`: [TableRow]?, `schema`: TableSchema?, `totalBytesProcessed`: String?, `totalRows`: String?) {
      self.`cacheHit` = `cacheHit`
      self.`errors` = `errors`
      self.`etag` = `etag`
      self.`jobComplete` = `jobComplete`
      self.`jobReference` = `jobReference`
      self.`kind` = `kind`
      self.`numDmlAffectedRows` = `numDmlAffectedRows`
      self.`pageToken` = `pageToken`
      self.`rows` = `rows`
      self.`schema` = `schema`
      self.`totalBytesProcessed` = `totalBytesProcessed`
      self.`totalRows` = `totalRows`
    }
    public var `cacheHit` : Bool?
    public var `errors` : [ErrorProto]?
    public var `etag` : String?
    public var `jobComplete` : Bool?
    public var `jobReference` : JobReference?
    public var `kind` : String?
    public var `numDmlAffectedRows` : String?
    public var `pageToken` : String?
    public var `rows` : [TableRow]?
    public var `schema` : TableSchema?
    public var `totalBytesProcessed` : String?
    public var `totalRows` : String?
  }

  public struct GetServiceAccountResponse : Codable {
    public init (`email`: String?, `kind`: String?) {
      self.`email` = `email`
      self.`kind` = `kind`
    }
    public var `email` : String?
    public var `kind` : String?
  }

  public struct GoogleSheetsOptions : Codable {
    public init (`range`: String?, `skipLeadingRows`: String?) {
      self.`range` = `range`
      self.`skipLeadingRows` = `skipLeadingRows`
    }
    public var `range` : String?
    public var `skipLeadingRows` : String?
  }

  public struct HivePartitioningOptions : Codable {
    public init (`mode`: String?, `sourceUriPrefix`: String?) {
      self.`mode` = `mode`
      self.`sourceUriPrefix` = `sourceUriPrefix`
    }
    public var `mode` : String?
    public var `sourceUriPrefix` : String?
  }

  public struct IterationResult : Codable {
    public init (`arimaResult`: ArimaResult?, `clusterInfos`: [ClusterInfo]?, `durationMs`: String?, `evalLoss`: Double?, `index`: Int?, `learnRate`: Double?, `trainingLoss`: Double?) {
      self.`arimaResult` = `arimaResult`
      self.`clusterInfos` = `clusterInfos`
      self.`durationMs` = `durationMs`
      self.`evalLoss` = `evalLoss`
      self.`index` = `index`
      self.`learnRate` = `learnRate`
      self.`trainingLoss` = `trainingLoss`
    }
    public var `arimaResult` : ArimaResult?
    public var `clusterInfos` : [ClusterInfo]?
    public var `durationMs` : String?
    public var `evalLoss` : Double?
    public var `index` : Int?
    public var `learnRate` : Double?
    public var `trainingLoss` : Double?
  }

  public struct Job : Codable {
    public init (`configuration`: JobConfiguration?, `etag`: String?, `id`: String?, `jobReference`: JobReference?, `kind`: String?, `selfLink`: String?, `statistics`: JobStatistics?, `status`: JobStatus?, `user_email`: String?) {
      self.`configuration` = `configuration`
      self.`etag` = `etag`
      self.`id` = `id`
      self.`jobReference` = `jobReference`
      self.`kind` = `kind`
      self.`selfLink` = `selfLink`
      self.`statistics` = `statistics`
      self.`status` = `status`
      self.`user_email` = `user_email`
    }
    public var `configuration` : JobConfiguration?
    public var `etag` : String?
    public var `id` : String?
    public var `jobReference` : JobReference?
    public var `kind` : String?
    public var `selfLink` : String?
    public var `statistics` : JobStatistics?
    public var `status` : JobStatus?
    public var `user_email` : String?
  }

  public struct JobCancelResponse : Codable {
    public init (`job`: Job?, `kind`: String?) {
      self.`job` = `job`
      self.`kind` = `kind`
    }
    public var `job` : Job?
    public var `kind` : String?
  }

  public struct JobConfiguration : Codable {
    public init (`copy`: JobConfigurationTableCopy?, `dryRun`: Bool?, `extract`: JobConfigurationExtract?, `jobTimeoutMs`: String?, `jobType`: String?, `labels`: Object?, `load`: JobConfigurationLoad?, `query`: JobConfigurationQuery?) {
      self.`copy` = `copy`
      self.`dryRun` = `dryRun`
      self.`extract` = `extract`
      self.`jobTimeoutMs` = `jobTimeoutMs`
      self.`jobType` = `jobType`
      self.`labels` = `labels`
      self.`load` = `load`
      self.`query` = `query`
    }
    public var `copy` : JobConfigurationTableCopy?
    public var `dryRun` : Bool?
    public var `extract` : JobConfigurationExtract?
    public var `jobTimeoutMs` : String?
    public var `jobType` : String?
    public var `labels` : Object?
    public var `load` : JobConfigurationLoad?
    public var `query` : JobConfigurationQuery?
  }

  public struct JobConfigurationExtract : Codable {
    public init (`compression`: String?, `destinationFormat`: String?, `destinationUri`: String?, `destinationUris`: [String]?, `fieldDelimiter`: String?, `printHeader`: Bool?, `sourceModel`: ModelReference?, `sourceTable`: TableReference?, `useAvroLogicalTypes`: Bool?) {
      self.`compression` = `compression`
      self.`destinationFormat` = `destinationFormat`
      self.`destinationUri` = `destinationUri`
      self.`destinationUris` = `destinationUris`
      self.`fieldDelimiter` = `fieldDelimiter`
      self.`printHeader` = `printHeader`
      self.`sourceModel` = `sourceModel`
      self.`sourceTable` = `sourceTable`
      self.`useAvroLogicalTypes` = `useAvroLogicalTypes`
    }
    public var `compression` : String?
    public var `destinationFormat` : String?
    public var `destinationUri` : String?
    public var `destinationUris` : [String]?
    public var `fieldDelimiter` : String?
    public var `printHeader` : Bool?
    public var `sourceModel` : ModelReference?
    public var `sourceTable` : TableReference?
    public var `useAvroLogicalTypes` : Bool?
  }

  public struct JobConfigurationLoad : Codable {
    public init (`allowJaggedRows`: Bool?, `allowQuotedNewlines`: Bool?, `autodetect`: Bool?, `clustering`: Clustering?, `createDisposition`: String?, `destinationEncryptionConfiguration`: EncryptionConfiguration?, `destinationTable`: TableReference?, `destinationTableProperties`: DestinationTableProperties?, `encoding`: String?, `fieldDelimiter`: String?, `hivePartitioningMode`: String?, `hivePartitioningOptions`: HivePartitioningOptions?, `ignoreUnknownValues`: Bool?, `maxBadRecords`: Int?, `nullMarker`: String?, `projectionFields`: [String]?, `quote`: String?, `rangePartitioning`: RangePartitioning?, `schema`: TableSchema?, `schemaInline`: String?, `schemaInlineFormat`: String?, `schemaUpdateOptions`: [String]?, `skipLeadingRows`: Int?, `sourceFormat`: String?, `sourceUris`: [String]?, `timePartitioning`: TimePartitioning?, `useAvroLogicalTypes`: Bool?, `writeDisposition`: String?) {
      self.`allowJaggedRows` = `allowJaggedRows`
      self.`allowQuotedNewlines` = `allowQuotedNewlines`
      self.`autodetect` = `autodetect`
      self.`clustering` = `clustering`
      self.`createDisposition` = `createDisposition`
      self.`destinationEncryptionConfiguration` = `destinationEncryptionConfiguration`
      self.`destinationTable` = `destinationTable`
      self.`destinationTableProperties` = `destinationTableProperties`
      self.`encoding` = `encoding`
      self.`fieldDelimiter` = `fieldDelimiter`
      self.`hivePartitioningMode` = `hivePartitioningMode`
      self.`hivePartitioningOptions` = `hivePartitioningOptions`
      self.`ignoreUnknownValues` = `ignoreUnknownValues`
      self.`maxBadRecords` = `maxBadRecords`
      self.`nullMarker` = `nullMarker`
      self.`projectionFields` = `projectionFields`
      self.`quote` = `quote`
      self.`rangePartitioning` = `rangePartitioning`
      self.`schema` = `schema`
      self.`schemaInline` = `schemaInline`
      self.`schemaInlineFormat` = `schemaInlineFormat`
      self.`schemaUpdateOptions` = `schemaUpdateOptions`
      self.`skipLeadingRows` = `skipLeadingRows`
      self.`sourceFormat` = `sourceFormat`
      self.`sourceUris` = `sourceUris`
      self.`timePartitioning` = `timePartitioning`
      self.`useAvroLogicalTypes` = `useAvroLogicalTypes`
      self.`writeDisposition` = `writeDisposition`
    }
    public var `allowJaggedRows` : Bool?
    public var `allowQuotedNewlines` : Bool?
    public var `autodetect` : Bool?
    public var `clustering` : Clustering?
    public var `createDisposition` : String?
    public var `destinationEncryptionConfiguration` : EncryptionConfiguration?
    public var `destinationTable` : TableReference?
    public var `destinationTableProperties` : DestinationTableProperties?
    public var `encoding` : String?
    public var `fieldDelimiter` : String?
    public var `hivePartitioningMode` : String?
    public var `hivePartitioningOptions` : HivePartitioningOptions?
    public var `ignoreUnknownValues` : Bool?
    public var `maxBadRecords` : Int?
    public var `nullMarker` : String?
    public var `projectionFields` : [String]?
    public var `quote` : String?
    public var `rangePartitioning` : RangePartitioning?
    public var `schema` : TableSchema?
    public var `schemaInline` : String?
    public var `schemaInlineFormat` : String?
    public var `schemaUpdateOptions` : [String]?
    public var `skipLeadingRows` : Int?
    public var `sourceFormat` : String?
    public var `sourceUris` : [String]?
    public var `timePartitioning` : TimePartitioning?
    public var `useAvroLogicalTypes` : Bool?
    public var `writeDisposition` : String?
  }

  public struct JobConfigurationQuery : Codable {
    public init (`allowLargeResults`: Bool?, `clustering`: Clustering?, `createDisposition`: String?, `defaultDataset`: DatasetReference?, `destinationEncryptionConfiguration`: EncryptionConfiguration?, `destinationTable`: TableReference?, `flattenResults`: Bool?, `maximumBillingTier`: Int?, `maximumBytesBilled`: String?, `parameterMode`: String?, `preserveNulls`: Bool?, `priority`: String?, `query`: String?, `queryParameters`: [QueryParameter]?, `rangePartitioning`: RangePartitioning?, `schemaUpdateOptions`: [String]?, `tableDefinitions`: Object?, `timePartitioning`: TimePartitioning?, `useLegacySql`: Bool?, `useQueryCache`: Bool?, `userDefinedFunctionResources`: [UserDefinedFunctionResource]?, `writeDisposition`: String?) {
      self.`allowLargeResults` = `allowLargeResults`
      self.`clustering` = `clustering`
      self.`createDisposition` = `createDisposition`
      self.`defaultDataset` = `defaultDataset`
      self.`destinationEncryptionConfiguration` = `destinationEncryptionConfiguration`
      self.`destinationTable` = `destinationTable`
      self.`flattenResults` = `flattenResults`
      self.`maximumBillingTier` = `maximumBillingTier`
      self.`maximumBytesBilled` = `maximumBytesBilled`
      self.`parameterMode` = `parameterMode`
      self.`preserveNulls` = `preserveNulls`
      self.`priority` = `priority`
      self.`query` = `query`
      self.`queryParameters` = `queryParameters`
      self.`rangePartitioning` = `rangePartitioning`
      self.`schemaUpdateOptions` = `schemaUpdateOptions`
      self.`tableDefinitions` = `tableDefinitions`
      self.`timePartitioning` = `timePartitioning`
      self.`useLegacySql` = `useLegacySql`
      self.`useQueryCache` = `useQueryCache`
      self.`userDefinedFunctionResources` = `userDefinedFunctionResources`
      self.`writeDisposition` = `writeDisposition`
    }
    public var `allowLargeResults` : Bool?
    public var `clustering` : Clustering?
    public var `createDisposition` : String?
    public var `defaultDataset` : DatasetReference?
    public var `destinationEncryptionConfiguration` : EncryptionConfiguration?
    public var `destinationTable` : TableReference?
    public var `flattenResults` : Bool?
    public var `maximumBillingTier` : Int?
    public var `maximumBytesBilled` : String?
    public var `parameterMode` : String?
    public var `preserveNulls` : Bool?
    public var `priority` : String?
    public var `query` : String?
    public var `queryParameters` : [QueryParameter]?
    public var `rangePartitioning` : RangePartitioning?
    public var `schemaUpdateOptions` : [String]?
    public var `tableDefinitions` : Object?
    public var `timePartitioning` : TimePartitioning?
    public var `useLegacySql` : Bool?
    public var `useQueryCache` : Bool?
    public var `userDefinedFunctionResources` : [UserDefinedFunctionResource]?
    public var `writeDisposition` : String?
  }

  public struct JobConfigurationTableCopy : Codable {
    public init (`createDisposition`: String?, `destinationEncryptionConfiguration`: EncryptionConfiguration?, `destinationTable`: TableReference?, `sourceTable`: TableReference?, `sourceTables`: [TableReference]?, `writeDisposition`: String?) {
      self.`createDisposition` = `createDisposition`
      self.`destinationEncryptionConfiguration` = `destinationEncryptionConfiguration`
      self.`destinationTable` = `destinationTable`
      self.`sourceTable` = `sourceTable`
      self.`sourceTables` = `sourceTables`
      self.`writeDisposition` = `writeDisposition`
    }
    public var `createDisposition` : String?
    public var `destinationEncryptionConfiguration` : EncryptionConfiguration?
    public var `destinationTable` : TableReference?
    public var `sourceTable` : TableReference?
    public var `sourceTables` : [TableReference]?
    public var `writeDisposition` : String?
  }

  public struct JobList : Codable {
    public init (`etag`: String?, `jobs`: [Object]?, `kind`: String?, `nextPageToken`: String?) {
      self.`etag` = `etag`
      self.`jobs` = `jobs`
      self.`kind` = `kind`
      self.`nextPageToken` = `nextPageToken`
    }
    public var `etag` : String?
    public var `jobs` : [Object]?
    public var `kind` : String?
    public var `nextPageToken` : String?
  }

  public struct JobReference : Codable {
    public init (`jobId`: String?, `location`: String?, `projectId`: String?) {
      self.`jobId` = `jobId`
      self.`location` = `location`
      self.`projectId` = `projectId`
    }
    public var `jobId` : String?
    public var `location` : String?
    public var `projectId` : String?
  }

  public struct JobStatistics : Codable {
    public init (`completionRatio`: Double?, `creationTime`: String?, `endTime`: String?, `extract`: JobStatistics4?, `load`: JobStatistics3?, `numChildJobs`: String?, `parentJobId`: String?, `query`: JobStatistics2?, `quotaDeferments`: [String]?, `reservationUsage`: [Object]?, `reservation_id`: String?, `scriptStatistics`: ScriptStatistics?, `startTime`: String?, `totalBytesProcessed`: String?, `totalSlotMs`: String?) {
      self.`completionRatio` = `completionRatio`
      self.`creationTime` = `creationTime`
      self.`endTime` = `endTime`
      self.`extract` = `extract`
      self.`load` = `load`
      self.`numChildJobs` = `numChildJobs`
      self.`parentJobId` = `parentJobId`
      self.`query` = `query`
      self.`quotaDeferments` = `quotaDeferments`
      self.`reservationUsage` = `reservationUsage`
      self.`reservation_id` = `reservation_id`
      self.`scriptStatistics` = `scriptStatistics`
      self.`startTime` = `startTime`
      self.`totalBytesProcessed` = `totalBytesProcessed`
      self.`totalSlotMs` = `totalSlotMs`
    }
    public var `completionRatio` : Double?
    public var `creationTime` : String?
    public var `endTime` : String?
    public var `extract` : JobStatistics4?
    public var `load` : JobStatistics3?
    public var `numChildJobs` : String?
    public var `parentJobId` : String?
    public var `query` : JobStatistics2?
    public var `quotaDeferments` : [String]?
    public var `reservationUsage` : [Object]?
    public var `reservation_id` : String?
    public var `scriptStatistics` : ScriptStatistics?
    public var `startTime` : String?
    public var `totalBytesProcessed` : String?
    public var `totalSlotMs` : String?
  }

  public struct JobStatistics2 : Codable {
    public init (`billingTier`: Int?, `cacheHit`: Bool?, `ddlOperationPerformed`: String?, `ddlTargetRoutine`: RoutineReference?, `ddlTargetTable`: TableReference?, `estimatedBytesProcessed`: String?, `modelTraining`: BigQueryModelTraining?, `modelTrainingCurrentIteration`: Int?, `modelTrainingExpectedTotalIteration`: String?, `numDmlAffectedRows`: String?, `queryPlan`: [ExplainQueryStage]?, `referencedRoutines`: [RoutineReference]?, `referencedTables`: [TableReference]?, `reservationUsage`: [Object]?, `schema`: TableSchema?, `statementType`: String?, `timeline`: [QueryTimelineSample]?, `totalBytesBilled`: String?, `totalBytesProcessed`: String?, `totalBytesProcessedAccuracy`: String?, `totalPartitionsProcessed`: String?, `totalSlotMs`: String?, `undeclaredQueryParameters`: [QueryParameter]?) {
      self.`billingTier` = `billingTier`
      self.`cacheHit` = `cacheHit`
      self.`ddlOperationPerformed` = `ddlOperationPerformed`
      self.`ddlTargetRoutine` = `ddlTargetRoutine`
      self.`ddlTargetTable` = `ddlTargetTable`
      self.`estimatedBytesProcessed` = `estimatedBytesProcessed`
      self.`modelTraining` = `modelTraining`
      self.`modelTrainingCurrentIteration` = `modelTrainingCurrentIteration`
      self.`modelTrainingExpectedTotalIteration` = `modelTrainingExpectedTotalIteration`
      self.`numDmlAffectedRows` = `numDmlAffectedRows`
      self.`queryPlan` = `queryPlan`
      self.`referencedRoutines` = `referencedRoutines`
      self.`referencedTables` = `referencedTables`
      self.`reservationUsage` = `reservationUsage`
      self.`schema` = `schema`
      self.`statementType` = `statementType`
      self.`timeline` = `timeline`
      self.`totalBytesBilled` = `totalBytesBilled`
      self.`totalBytesProcessed` = `totalBytesProcessed`
      self.`totalBytesProcessedAccuracy` = `totalBytesProcessedAccuracy`
      self.`totalPartitionsProcessed` = `totalPartitionsProcessed`
      self.`totalSlotMs` = `totalSlotMs`
      self.`undeclaredQueryParameters` = `undeclaredQueryParameters`
    }
    public var `billingTier` : Int?
    public var `cacheHit` : Bool?
    public var `ddlOperationPerformed` : String?
    public var `ddlTargetRoutine` : RoutineReference?
    public var `ddlTargetTable` : TableReference?
    public var `estimatedBytesProcessed` : String?
    public var `modelTraining` : BigQueryModelTraining?
    public var `modelTrainingCurrentIteration` : Int?
    public var `modelTrainingExpectedTotalIteration` : String?
    public var `numDmlAffectedRows` : String?
    public var `queryPlan` : [ExplainQueryStage]?
    public var `referencedRoutines` : [RoutineReference]?
    public var `referencedTables` : [TableReference]?
    public var `reservationUsage` : [Object]?
    public var `schema` : TableSchema?
    public var `statementType` : String?
    public var `timeline` : [QueryTimelineSample]?
    public var `totalBytesBilled` : String?
    public var `totalBytesProcessed` : String?
    public var `totalBytesProcessedAccuracy` : String?
    public var `totalPartitionsProcessed` : String?
    public var `totalSlotMs` : String?
    public var `undeclaredQueryParameters` : [QueryParameter]?
  }

  public struct JobStatistics3 : Codable {
    public init (`badRecords`: String?, `inputFileBytes`: String?, `inputFiles`: String?, `outputBytes`: String?, `outputRows`: String?) {
      self.`badRecords` = `badRecords`
      self.`inputFileBytes` = `inputFileBytes`
      self.`inputFiles` = `inputFiles`
      self.`outputBytes` = `outputBytes`
      self.`outputRows` = `outputRows`
    }
    public var `badRecords` : String?
    public var `inputFileBytes` : String?
    public var `inputFiles` : String?
    public var `outputBytes` : String?
    public var `outputRows` : String?
  }

  public struct JobStatistics4 : Codable {
    public init (`destinationUriFileCounts`: [String]?, `inputBytes`: String?) {
      self.`destinationUriFileCounts` = `destinationUriFileCounts`
      self.`inputBytes` = `inputBytes`
    }
    public var `destinationUriFileCounts` : [String]?
    public var `inputBytes` : String?
  }

  public struct JobStatus : Codable {
    public init (`errorResult`: ErrorProto?, `errors`: [ErrorProto]?, `state`: String?) {
      self.`errorResult` = `errorResult`
      self.`errors` = `errors`
      self.`state` = `state`
    }
    public var `errorResult` : ErrorProto?
    public var `errors` : [ErrorProto]?
    public var `state` : String?
  }

  public struct JsonObject : Codable {
  }

  public typealias `JsonValue` = JSONAny

  public struct ListModelsResponse : Codable {
    public init (`models`: [Model]?, `nextPageToken`: String?) {
      self.`models` = `models`
      self.`nextPageToken` = `nextPageToken`
    }
    public var `models` : [Model]?
    public var `nextPageToken` : String?
  }

  public struct ListRoutinesResponse : Codable {
    public init (`nextPageToken`: String?, `routines`: [Routine]?) {
      self.`nextPageToken` = `nextPageToken`
      self.`routines` = `routines`
    }
    public var `nextPageToken` : String?
    public var `routines` : [Routine]?
  }

  public struct LocationMetadata : Codable {
    public init (`legacyLocationId`: String?) {
      self.`legacyLocationId` = `legacyLocationId`
    }
    public var `legacyLocationId` : String?
  }

  public struct MaterializedViewDefinition : Codable {
    public init (`enableRefresh`: Bool?, `lastRefreshTime`: String?, `query`: String?, `refreshIntervalMs`: String?) {
      self.`enableRefresh` = `enableRefresh`
      self.`lastRefreshTime` = `lastRefreshTime`
      self.`query` = `query`
      self.`refreshIntervalMs` = `refreshIntervalMs`
    }
    public var `enableRefresh` : Bool?
    public var `lastRefreshTime` : String?
    public var `query` : String?
    public var `refreshIntervalMs` : String?
  }

  public struct Model : Codable {
    public init (`creationTime`: String?, `description`: String?, `encryptionConfiguration`: EncryptionConfiguration?, `etag`: String?, `expirationTime`: String?, `featureColumns`: [StandardSqlField]?, `friendlyName`: String?, `labelColumns`: [StandardSqlField]?, `labels`: Object?, `lastModifiedTime`: String?, `location`: String?, `modelReference`: ModelReference?, `modelType`: String?, `trainingRuns`: [TrainingRun]?) {
      self.`creationTime` = `creationTime`
      self.`description` = `description`
      self.`encryptionConfiguration` = `encryptionConfiguration`
      self.`etag` = `etag`
      self.`expirationTime` = `expirationTime`
      self.`featureColumns` = `featureColumns`
      self.`friendlyName` = `friendlyName`
      self.`labelColumns` = `labelColumns`
      self.`labels` = `labels`
      self.`lastModifiedTime` = `lastModifiedTime`
      self.`location` = `location`
      self.`modelReference` = `modelReference`
      self.`modelType` = `modelType`
      self.`trainingRuns` = `trainingRuns`
    }
    public var `creationTime` : String?
    public var `description` : String?
    public var `encryptionConfiguration` : EncryptionConfiguration?
    public var `etag` : String?
    public var `expirationTime` : String?
    public var `featureColumns` : [StandardSqlField]?
    public var `friendlyName` : String?
    public var `labelColumns` : [StandardSqlField]?
    public var `labels` : Object?
    public var `lastModifiedTime` : String?
    public var `location` : String?
    public var `modelReference` : ModelReference?
    public var `modelType` : String?
    public var `trainingRuns` : [TrainingRun]?
  }

  public struct ModelDefinition : Codable {
    public init (`modelOptions`: Object?, `trainingRuns`: [BqmlTrainingRun]?) {
      self.`modelOptions` = `modelOptions`
      self.`trainingRuns` = `trainingRuns`
    }
    public var `modelOptions` : Object?
    public var `trainingRuns` : [BqmlTrainingRun]?
  }

  public struct ModelReference : Codable {
    public init (`datasetId`: String?, `modelId`: String?, `projectId`: String?) {
      self.`datasetId` = `datasetId`
      self.`modelId` = `modelId`
      self.`projectId` = `projectId`
    }
    public var `datasetId` : String?
    public var `modelId` : String?
    public var `projectId` : String?
  }

  public struct MultiClassClassificationMetrics : Codable {
    public init (`aggregateClassificationMetrics`: AggregateClassificationMetrics?, `confusionMatrixList`: [ConfusionMatrix]?) {
      self.`aggregateClassificationMetrics` = `aggregateClassificationMetrics`
      self.`confusionMatrixList` = `confusionMatrixList`
    }
    public var `aggregateClassificationMetrics` : AggregateClassificationMetrics?
    public var `confusionMatrixList` : [ConfusionMatrix]?
  }

  public struct ProjectList : Codable {
    public init (`etag`: String?, `kind`: String?, `nextPageToken`: String?, `projects`: [Object]?, `totalItems`: Int?) {
      self.`etag` = `etag`
      self.`kind` = `kind`
      self.`nextPageToken` = `nextPageToken`
      self.`projects` = `projects`
      self.`totalItems` = `totalItems`
    }
    public var `etag` : String?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `projects` : [Object]?
    public var `totalItems` : Int?
  }

  public struct ProjectReference : Codable {
    public init (`projectId`: String?) {
      self.`projectId` = `projectId`
    }
    public var `projectId` : String?
  }

  public struct QueryParameter : Codable {
    public init (`name`: String?, `parameterType`: QueryParameterType?, `parameterValue`: QueryParameterValue?) {
      self.`name` = `name`
      self.`parameterType` = `parameterType`
      self.`parameterValue` = `parameterValue`
    }
    public var `name` : String?
    public var `parameterType` : QueryParameterType?
    public var `parameterValue` : QueryParameterValue?
  }

  public class QueryParameterType : Codable {
    public init (`arrayType`: QueryParameterType?, `structTypes`: [Object]?, `type`: String?) {
      self.`arrayType` = `arrayType`
      self.`structTypes` = `structTypes`
      self.`type` = `type`
    }
    public var `arrayType` : QueryParameterType?
    public var `structTypes` : [Object]?
    public var `type` : String?
  }

  public struct QueryParameterValue : Codable {
    public init (`arrayValues`: [QueryParameterValue]?, `structValues`: Object?, `value`: String?) {
      self.`arrayValues` = `arrayValues`
      self.`structValues` = `structValues`
      self.`value` = `value`
    }
    public var `arrayValues` : [QueryParameterValue]?
    public var `structValues` : Object?
    public var `value` : String?
  }

  public struct QueryRequest : Codable {
    public init (`defaultDataset`: DatasetReference?, `dryRun`: Bool?, `kind`: String?, `location`: String?, `maxResults`: Int?, `parameterMode`: String?, `preserveNulls`: Bool?, `query`: String?, `queryParameters`: [QueryParameter]?, `timeoutMs`: Int?, `useLegacySql`: Bool?, `useQueryCache`: Bool?) {
      self.`defaultDataset` = `defaultDataset`
      self.`dryRun` = `dryRun`
      self.`kind` = `kind`
      self.`location` = `location`
      self.`maxResults` = `maxResults`
      self.`parameterMode` = `parameterMode`
      self.`preserveNulls` = `preserveNulls`
      self.`query` = `query`
      self.`queryParameters` = `queryParameters`
      self.`timeoutMs` = `timeoutMs`
      self.`useLegacySql` = `useLegacySql`
      self.`useQueryCache` = `useQueryCache`
    }
    public var `defaultDataset` : DatasetReference?
    public var `dryRun` : Bool?
    public var `kind` : String?
    public var `location` : String?
    public var `maxResults` : Int?
    public var `parameterMode` : String?
    public var `preserveNulls` : Bool?
    public var `query` : String?
    public var `queryParameters` : [QueryParameter]?
    public var `timeoutMs` : Int?
    public var `useLegacySql` : Bool?
    public var `useQueryCache` : Bool?
  }

  public struct QueryResponse : Codable {
    public init (`cacheHit`: Bool?, `errors`: [ErrorProto]?, `jobComplete`: Bool?, `jobReference`: JobReference?, `kind`: String?, `numDmlAffectedRows`: String?, `pageToken`: String?, `rows`: [TableRow]?, `schema`: TableSchema?, `totalBytesProcessed`: String?, `totalRows`: String?) {
      self.`cacheHit` = `cacheHit`
      self.`errors` = `errors`
      self.`jobComplete` = `jobComplete`
      self.`jobReference` = `jobReference`
      self.`kind` = `kind`
      self.`numDmlAffectedRows` = `numDmlAffectedRows`
      self.`pageToken` = `pageToken`
      self.`rows` = `rows`
      self.`schema` = `schema`
      self.`totalBytesProcessed` = `totalBytesProcessed`
      self.`totalRows` = `totalRows`
    }
    public var `cacheHit` : Bool?
    public var `errors` : [ErrorProto]?
    public var `jobComplete` : Bool?
    public var `jobReference` : JobReference?
    public var `kind` : String?
    public var `numDmlAffectedRows` : String?
    public var `pageToken` : String?
    public var `rows` : [TableRow]?
    public var `schema` : TableSchema?
    public var `totalBytesProcessed` : String?
    public var `totalRows` : String?
  }

  public struct QueryTimelineSample : Codable {
    public init (`activeUnits`: String?, `completedUnits`: String?, `elapsedMs`: String?, `pendingUnits`: String?, `totalSlotMs`: String?) {
      self.`activeUnits` = `activeUnits`
      self.`completedUnits` = `completedUnits`
      self.`elapsedMs` = `elapsedMs`
      self.`pendingUnits` = `pendingUnits`
      self.`totalSlotMs` = `totalSlotMs`
    }
    public var `activeUnits` : String?
    public var `completedUnits` : String?
    public var `elapsedMs` : String?
    public var `pendingUnits` : String?
    public var `totalSlotMs` : String?
  }

  public struct RangePartitioning : Codable {
    public init (`field`: String?, `range`: Object?) {
      self.`field` = `field`
      self.`range` = `range`
    }
    public var `field` : String?
    public var `range` : Object?
  }

  public struct RegressionMetrics : Codable {
    public init (`meanAbsoluteError`: Double?, `meanSquaredError`: Double?, `meanSquaredLogError`: Double?, `medianAbsoluteError`: Double?, `rSquared`: Double?) {
      self.`meanAbsoluteError` = `meanAbsoluteError`
      self.`meanSquaredError` = `meanSquaredError`
      self.`meanSquaredLogError` = `meanSquaredLogError`
      self.`medianAbsoluteError` = `medianAbsoluteError`
      self.`rSquared` = `rSquared`
    }
    public var `meanAbsoluteError` : Double?
    public var `meanSquaredError` : Double?
    public var `meanSquaredLogError` : Double?
    public var `medianAbsoluteError` : Double?
    public var `rSquared` : Double?
  }

  public struct Routine : Codable {
    public init (`arguments`: [Argument]?, `creationTime`: String?, `definitionBody`: String?, `description`: String?, `etag`: String?, `importedLibraries`: [String]?, `language`: String?, `lastModifiedTime`: String?, `returnType`: StandardSqlDataType?, `routineReference`: RoutineReference?, `routineType`: String?) {
      self.`arguments` = `arguments`
      self.`creationTime` = `creationTime`
      self.`definitionBody` = `definitionBody`
      self.`description` = `description`
      self.`etag` = `etag`
      self.`importedLibraries` = `importedLibraries`
      self.`language` = `language`
      self.`lastModifiedTime` = `lastModifiedTime`
      self.`returnType` = `returnType`
      self.`routineReference` = `routineReference`
      self.`routineType` = `routineType`
    }
    public var `arguments` : [Argument]?
    public var `creationTime` : String?
    public var `definitionBody` : String?
    public var `description` : String?
    public var `etag` : String?
    public var `importedLibraries` : [String]?
    public var `language` : String?
    public var `lastModifiedTime` : String?
    public var `returnType` : StandardSqlDataType?
    public var `routineReference` : RoutineReference?
    public var `routineType` : String?
  }

  public struct RoutineReference : Codable {
    public init (`datasetId`: String?, `projectId`: String?, `routineId`: String?) {
      self.`datasetId` = `datasetId`
      self.`projectId` = `projectId`
      self.`routineId` = `routineId`
    }
    public var `datasetId` : String?
    public var `projectId` : String?
    public var `routineId` : String?
  }

  public struct Row : Codable {
    public init (`actualLabel`: String?, `entries`: [Entry]?) {
      self.`actualLabel` = `actualLabel`
      self.`entries` = `entries`
    }
    public var `actualLabel` : String?
    public var `entries` : [Entry]?
  }

  public struct ScriptStackFrame : Codable {
    public init (`endColumn`: Int?, `endLine`: Int?, `procedureId`: String?, `startColumn`: Int?, `startLine`: Int?, `text`: String?) {
      self.`endColumn` = `endColumn`
      self.`endLine` = `endLine`
      self.`procedureId` = `procedureId`
      self.`startColumn` = `startColumn`
      self.`startLine` = `startLine`
      self.`text` = `text`
    }
    public var `endColumn` : Int?
    public var `endLine` : Int?
    public var `procedureId` : String?
    public var `startColumn` : Int?
    public var `startLine` : Int?
    public var `text` : String?
  }

  public struct ScriptStatistics : Codable {
    public init (`evaluationKind`: String?, `stackFrames`: [ScriptStackFrame]?) {
      self.`evaluationKind` = `evaluationKind`
      self.`stackFrames` = `stackFrames`
    }
    public var `evaluationKind` : String?
    public var `stackFrames` : [ScriptStackFrame]?
  }

  public class StandardSqlDataType : Codable {
    public init (`arrayElementType`: StandardSqlDataType?, `structType`: StandardSqlStructType?, `typeKind`: String?) {
      self.`arrayElementType` = `arrayElementType`
      self.`structType` = `structType`
      self.`typeKind` = `typeKind`
    }
    public var `arrayElementType` : StandardSqlDataType?
    public var `structType` : StandardSqlStructType?
    public var `typeKind` : String?
  }

  public struct StandardSqlField : Codable {
    public init (`name`: String?, `type`: StandardSqlDataType?) {
      self.`name` = `name`
      self.`type` = `type`
    }
    public var `name` : String?
    public var `type` : StandardSqlDataType?
  }

  public struct StandardSqlStructType : Codable {
    public init (`fields`: [StandardSqlField]?) {
      self.`fields` = `fields`
    }
    public var `fields` : [StandardSqlField]?
  }

  public struct Streamingbuffer : Codable {
    public init (`estimatedBytes`: String?, `estimatedRows`: String?, `oldestEntryTime`: String?) {
      self.`estimatedBytes` = `estimatedBytes`
      self.`estimatedRows` = `estimatedRows`
      self.`oldestEntryTime` = `oldestEntryTime`
    }
    public var `estimatedBytes` : String?
    public var `estimatedRows` : String?
    public var `oldestEntryTime` : String?
  }

  public struct Table : Codable {
    public init (`clustering`: Clustering?, `creationTime`: String?, `description`: String?, `encryptionConfiguration`: EncryptionConfiguration?, `etag`: String?, `expirationTime`: String?, `externalDataConfiguration`: ExternalDataConfiguration?, `friendlyName`: String?, `id`: String?, `kind`: String?, `labels`: Object?, `lastModifiedTime`: String?, `location`: String?, `materializedView`: MaterializedViewDefinition?, `model`: ModelDefinition?, `numBytes`: String?, `numLongTermBytes`: String?, `numPhysicalBytes`: String?, `numRows`: String?, `rangePartitioning`: RangePartitioning?, `requirePartitionFilter`: Bool?, `schema`: TableSchema?, `selfLink`: String?, `streamingBuffer`: Streamingbuffer?, `tableReference`: TableReference?, `timePartitioning`: TimePartitioning?, `type`: String?, `view`: ViewDefinition?) {
      self.`clustering` = `clustering`
      self.`creationTime` = `creationTime`
      self.`description` = `description`
      self.`encryptionConfiguration` = `encryptionConfiguration`
      self.`etag` = `etag`
      self.`expirationTime` = `expirationTime`
      self.`externalDataConfiguration` = `externalDataConfiguration`
      self.`friendlyName` = `friendlyName`
      self.`id` = `id`
      self.`kind` = `kind`
      self.`labels` = `labels`
      self.`lastModifiedTime` = `lastModifiedTime`
      self.`location` = `location`
      self.`materializedView` = `materializedView`
      self.`model` = `model`
      self.`numBytes` = `numBytes`
      self.`numLongTermBytes` = `numLongTermBytes`
      self.`numPhysicalBytes` = `numPhysicalBytes`
      self.`numRows` = `numRows`
      self.`rangePartitioning` = `rangePartitioning`
      self.`requirePartitionFilter` = `requirePartitionFilter`
      self.`schema` = `schema`
      self.`selfLink` = `selfLink`
      self.`streamingBuffer` = `streamingBuffer`
      self.`tableReference` = `tableReference`
      self.`timePartitioning` = `timePartitioning`
      self.`type` = `type`
      self.`view` = `view`
    }
    public var `clustering` : Clustering?
    public var `creationTime` : String?
    public var `description` : String?
    public var `encryptionConfiguration` : EncryptionConfiguration?
    public var `etag` : String?
    public var `expirationTime` : String?
    public var `externalDataConfiguration` : ExternalDataConfiguration?
    public var `friendlyName` : String?
    public var `id` : String?
    public var `kind` : String?
    public var `labels` : Object?
    public var `lastModifiedTime` : String?
    public var `location` : String?
    public var `materializedView` : MaterializedViewDefinition?
    public var `model` : ModelDefinition?
    public var `numBytes` : String?
    public var `numLongTermBytes` : String?
    public var `numPhysicalBytes` : String?
    public var `numRows` : String?
    public var `rangePartitioning` : RangePartitioning?
    public var `requirePartitionFilter` : Bool?
    public var `schema` : TableSchema?
    public var `selfLink` : String?
    public var `streamingBuffer` : Streamingbuffer?
    public var `tableReference` : TableReference?
    public var `timePartitioning` : TimePartitioning?
    public var `type` : String?
    public var `view` : ViewDefinition?
  }

  public struct TableCell : Codable {
    public init (`v`: JSONAny?) {
      self.`v` = `v`
    }
    public var `v` : JSONAny?
  }

  public struct TableDataInsertAllRequest : Codable {
    public init (`ignoreUnknownValues`: Bool?, `kind`: String?, `rows`: [Object]?, `skipInvalidRows`: Bool?, `templateSuffix`: String?) {
      self.`ignoreUnknownValues` = `ignoreUnknownValues`
      self.`kind` = `kind`
      self.`rows` = `rows`
      self.`skipInvalidRows` = `skipInvalidRows`
      self.`templateSuffix` = `templateSuffix`
    }
    public var `ignoreUnknownValues` : Bool?
    public var `kind` : String?
    public var `rows` : [Object]?
    public var `skipInvalidRows` : Bool?
    public var `templateSuffix` : String?
  }

  public struct TableDataInsertAllResponse : Codable {
    public init (`insertErrors`: [Object]?, `kind`: String?) {
      self.`insertErrors` = `insertErrors`
      self.`kind` = `kind`
    }
    public var `insertErrors` : [Object]?
    public var `kind` : String?
  }

  public struct TableDataList : Codable {
    public init (`etag`: String?, `kind`: String?, `pageToken`: String?, `rows`: [TableRow]?, `totalRows`: String?) {
      self.`etag` = `etag`
      self.`kind` = `kind`
      self.`pageToken` = `pageToken`
      self.`rows` = `rows`
      self.`totalRows` = `totalRows`
    }
    public var `etag` : String?
    public var `kind` : String?
    public var `pageToken` : String?
    public var `rows` : [TableRow]?
    public var `totalRows` : String?
  }

  public struct TableFieldSchema : Codable {
    public init (`categories`: Object?, `description`: String?, `fields`: [TableFieldSchema]?, `mode`: String?, `name`: String?, `policyTags`: Object?, `type`: String?) {
      self.`categories` = `categories`
      self.`description` = `description`
      self.`fields` = `fields`
      self.`mode` = `mode`
      self.`name` = `name`
      self.`policyTags` = `policyTags`
      self.`type` = `type`
    }
    public var `categories` : Object?
    public var `description` : String?
    public var `fields` : [TableFieldSchema]?
    public var `mode` : String?
    public var `name` : String?
    public var `policyTags` : Object?
    public var `type` : String?
  }

  public struct TableList : Codable {
    public init (`etag`: String?, `kind`: String?, `nextPageToken`: String?, `tables`: [Object]?, `totalItems`: Int?) {
      self.`etag` = `etag`
      self.`kind` = `kind`
      self.`nextPageToken` = `nextPageToken`
      self.`tables` = `tables`
      self.`totalItems` = `totalItems`
    }
    public var `etag` : String?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `tables` : [Object]?
    public var `totalItems` : Int?
  }

  public struct TableReference : Codable {
    public init (`datasetId`: String?, `projectId`: String?, `tableId`: String?) {
      self.`datasetId` = `datasetId`
      self.`projectId` = `projectId`
      self.`tableId` = `tableId`
    }
    public var `datasetId` : String?
    public var `projectId` : String?
    public var `tableId` : String?
  }

  public struct TableRow : Codable {
    public init (`f`: [TableCell]?) {
      self.`f` = `f`
    }
    public var `f` : [TableCell]?
  }

  public struct TableSchema : Codable {
    public init (`fields`: [TableFieldSchema]?) {
      self.`fields` = `fields`
    }
    public var `fields` : [TableFieldSchema]?
  }

  public struct TimePartitioning : Codable {
    public init (`expirationMs`: String?, `field`: String?, `requirePartitionFilter`: Bool?, `type`: String?) {
      self.`expirationMs` = `expirationMs`
      self.`field` = `field`
      self.`requirePartitionFilter` = `requirePartitionFilter`
      self.`type` = `type`
    }
    public var `expirationMs` : String?
    public var `field` : String?
    public var `requirePartitionFilter` : Bool?
    public var `type` : String?
  }

  public struct TrainingOptions : Codable {
    public init (`dataSplitColumn`: String?, `dataSplitEvalFraction`: Double?, `dataSplitMethod`: String?, `distanceType`: String?, `earlyStop`: Bool?, `initialLearnRate`: Double?, `inputLabelColumns`: [String]?, `kmeansInitializationColumn`: String?, `kmeansInitializationMethod`: String?, `l1Regularization`: Double?, `l2Regularization`: Double?, `labelClassWeights`: Object?, `learnRate`: Double?, `learnRateStrategy`: String?, `lossType`: String?, `maxIterations`: String?, `minRelativeProgress`: Double?, `modelUri`: String?, `numClusters`: String?, `optimizationStrategy`: String?, `warmStart`: Bool?) {
      self.`dataSplitColumn` = `dataSplitColumn`
      self.`dataSplitEvalFraction` = `dataSplitEvalFraction`
      self.`dataSplitMethod` = `dataSplitMethod`
      self.`distanceType` = `distanceType`
      self.`earlyStop` = `earlyStop`
      self.`initialLearnRate` = `initialLearnRate`
      self.`inputLabelColumns` = `inputLabelColumns`
      self.`kmeansInitializationColumn` = `kmeansInitializationColumn`
      self.`kmeansInitializationMethod` = `kmeansInitializationMethod`
      self.`l1Regularization` = `l1Regularization`
      self.`l2Regularization` = `l2Regularization`
      self.`labelClassWeights` = `labelClassWeights`
      self.`learnRate` = `learnRate`
      self.`learnRateStrategy` = `learnRateStrategy`
      self.`lossType` = `lossType`
      self.`maxIterations` = `maxIterations`
      self.`minRelativeProgress` = `minRelativeProgress`
      self.`modelUri` = `modelUri`
      self.`numClusters` = `numClusters`
      self.`optimizationStrategy` = `optimizationStrategy`
      self.`warmStart` = `warmStart`
    }
    public var `dataSplitColumn` : String?
    public var `dataSplitEvalFraction` : Double?
    public var `dataSplitMethod` : String?
    public var `distanceType` : String?
    public var `earlyStop` : Bool?
    public var `initialLearnRate` : Double?
    public var `inputLabelColumns` : [String]?
    public var `kmeansInitializationColumn` : String?
    public var `kmeansInitializationMethod` : String?
    public var `l1Regularization` : Double?
    public var `l2Regularization` : Double?
    public var `labelClassWeights` : Object?
    public var `learnRate` : Double?
    public var `learnRateStrategy` : String?
    public var `lossType` : String?
    public var `maxIterations` : String?
    public var `minRelativeProgress` : Double?
    public var `modelUri` : String?
    public var `numClusters` : String?
    public var `optimizationStrategy` : String?
    public var `warmStart` : Bool?
  }

  public struct TrainingRun : Codable {
    public init (`dataSplitResult`: DataSplitResult?, `evaluationMetrics`: EvaluationMetrics?, `results`: [IterationResult]?, `startTime`: String?, `trainingOptions`: TrainingOptions?) {
      self.`dataSplitResult` = `dataSplitResult`
      self.`evaluationMetrics` = `evaluationMetrics`
      self.`results` = `results`
      self.`startTime` = `startTime`
      self.`trainingOptions` = `trainingOptions`
    }
    public var `dataSplitResult` : DataSplitResult?
    public var `evaluationMetrics` : EvaluationMetrics?
    public var `results` : [IterationResult]?
    public var `startTime` : String?
    public var `trainingOptions` : TrainingOptions?
  }

  public struct UserDefinedFunctionResource : Codable {
    public init (`inlineCode`: String?, `resourceUri`: String?) {
      self.`inlineCode` = `inlineCode`
      self.`resourceUri` = `resourceUri`
    }
    public var `inlineCode` : String?
    public var `resourceUri` : String?
  }

  public struct ViewDefinition : Codable {
    public init (`query`: String?, `useLegacySql`: Bool?, `userDefinedFunctionResources`: [UserDefinedFunctionResource]?) {
      self.`query` = `query`
      self.`useLegacySql` = `useLegacySql`
      self.`userDefinedFunctionResources` = `userDefinedFunctionResources`
    }
    public var `query` : String?
    public var `useLegacySql` : Bool?
    public var `userDefinedFunctionResources` : [UserDefinedFunctionResource]?
  }

  public struct DatasetsDeleteParameters : Parameterizable {
    public init (`datasetId`: String?, `deleteContents`: Bool?, `projectId`: String?) {
      self.`datasetId` = `datasetId`
      self.`deleteContents` = `deleteContents`
      self.`projectId` = `projectId`
    }
    public var datasetId : String?
    public var deleteContents : Bool?
    public var projectId : String?
    public func queryParameters() -> [String] {
      return ["deleteContents"]
    }
    public func pathParameters() -> [String] {
      return ["datasetId","projectId"]
    }
  }

  public func datasets_delete (
    parameters: DatasetsDeleteParameters,
    completion: @escaping (Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "projects/{projectId}/datasets/{datasetId}",
        parameters: parameters,
        completion: completion)
  }

  public struct DatasetsGetParameters : Parameterizable {
    public init (`datasetId`: String?, `projectId`: String?) {
      self.`datasetId` = `datasetId`
      self.`projectId` = `projectId`
    }
    public var datasetId : String?
    public var projectId : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["datasetId","projectId"]
    }
  }

  public func datasets_get (
    parameters: DatasetsGetParameters,
    completion: @escaping (Dataset?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "projects/{projectId}/datasets/{datasetId}",
        parameters: parameters,
        completion: completion)
  }

  public struct DatasetsInsertParameters : Parameterizable {
    public init (`projectId`: String?) {
      self.`projectId` = `projectId`
    }
    public var projectId : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["projectId"]
    }
  }

  public func datasets_insert (
    request: Dataset,
    parameters: DatasetsInsertParameters,
    completion: @escaping (Dataset?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "projects/{projectId}/datasets",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct DatasetsListParameters : Parameterizable {
    public init (`all`: Bool?, `filter`: String?, `maxResults`: Int?, `pageToken`: String?, `projectId`: String?) {
      self.`all` = `all`
      self.`filter` = `filter`
      self.`maxResults` = `maxResults`
      self.`pageToken` = `pageToken`
      self.`projectId` = `projectId`
    }
    public var all : Bool?
    public var filter : String?
    public var maxResults : Int?
    public var pageToken : String?
    public var projectId : String?
    public func queryParameters() -> [String] {
      return ["all","filter","maxResults","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["projectId"]
    }
  }

  public func datasets_list (
    parameters: DatasetsListParameters,
    completion: @escaping (DatasetList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "projects/{projectId}/datasets",
        parameters: parameters,
        completion: completion)
  }

  public struct DatasetsPatchParameters : Parameterizable {
    public init (`datasetId`: String?, `projectId`: String?) {
      self.`datasetId` = `datasetId`
      self.`projectId` = `projectId`
    }
    public var datasetId : String?
    public var projectId : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["datasetId","projectId"]
    }
  }

  public func datasets_patch (
    request: Dataset,
    parameters: DatasetsPatchParameters,
    completion: @escaping (Dataset?, Error?) -> ()) throws {
      try perform(
        method: "PATCH",
        path: "projects/{projectId}/datasets/{datasetId}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct DatasetsUpdateParameters : Parameterizable {
    public init (`datasetId`: String?, `projectId`: String?) {
      self.`datasetId` = `datasetId`
      self.`projectId` = `projectId`
    }
    public var datasetId : String?
    public var projectId : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["datasetId","projectId"]
    }
  }

  public func datasets_update (
    request: Dataset,
    parameters: DatasetsUpdateParameters,
    completion: @escaping (Dataset?, Error?) -> ()) throws {
      try perform(
        method: "PUT",
        path: "projects/{projectId}/datasets/{datasetId}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct JobsCancelParameters : Parameterizable {
    public init (`jobId`: String?, `location`: String?, `projectId`: String?) {
      self.`jobId` = `jobId`
      self.`location` = `location`
      self.`projectId` = `projectId`
    }
    public var jobId : String?
    public var location : String?
    public var projectId : String?
    public func queryParameters() -> [String] {
      return ["location"]
    }
    public func pathParameters() -> [String] {
      return ["jobId","projectId"]
    }
  }

  public func jobs_cancel (
    parameters: JobsCancelParameters,
    completion: @escaping (JobCancelResponse?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "projects/{projectId}/jobs/{jobId}/cancel",
        parameters: parameters,
        completion: completion)
  }

  public struct JobsGetParameters : Parameterizable {
    public init (`jobId`: String?, `location`: String?, `projectId`: String?) {
      self.`jobId` = `jobId`
      self.`location` = `location`
      self.`projectId` = `projectId`
    }
    public var jobId : String?
    public var location : String?
    public var projectId : String?
    public func queryParameters() -> [String] {
      return ["location"]
    }
    public func pathParameters() -> [String] {
      return ["jobId","projectId"]
    }
  }

  public func jobs_get (
    parameters: JobsGetParameters,
    completion: @escaping (Job?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "projects/{projectId}/jobs/{jobId}",
        parameters: parameters,
        completion: completion)
  }

  public struct JobsGetQueryResultsParameters : Parameterizable {
    public init (`jobId`: String?, `location`: String?, `maxResults`: Int?, `pageToken`: String?, `projectId`: String?, `startIndex`: String?, `timeoutMs`: Int?) {
      self.`jobId` = `jobId`
      self.`location` = `location`
      self.`maxResults` = `maxResults`
      self.`pageToken` = `pageToken`
      self.`projectId` = `projectId`
      self.`startIndex` = `startIndex`
      self.`timeoutMs` = `timeoutMs`
    }
    public var jobId : String?
    public var location : String?
    public var maxResults : Int?
    public var pageToken : String?
    public var projectId : String?
    public var startIndex : String?
    public var timeoutMs : Int?
    public func queryParameters() -> [String] {
      return ["location","maxResults","pageToken","startIndex","timeoutMs"]
    }
    public func pathParameters() -> [String] {
      return ["jobId","projectId"]
    }
  }

  public func jobs_getQueryResults (
    parameters: JobsGetQueryResultsParameters,
    completion: @escaping (GetQueryResultsResponse?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "projects/{projectId}/queries/{jobId}",
        parameters: parameters,
        completion: completion)
  }

  public struct JobsInsertParameters : Parameterizable {
    public init (`projectId`: String?) {
      self.`projectId` = `projectId`
    }
    public var projectId : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["projectId"]
    }
  }

  public func jobs_insert (
    request: Job,
    parameters: JobsInsertParameters,
    completion: @escaping (Job?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "projects/{projectId}/jobs",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct JobsListParameters : Parameterizable {
    public init (`allUsers`: Bool?, `maxCreationTime`: String?, `maxResults`: Int?, `minCreationTime`: String?, `pageToken`: String?, `parentJobId`: String?, `projectId`: String?, `projection`: String?, `stateFilter`: String?) {
      self.`allUsers` = `allUsers`
      self.`maxCreationTime` = `maxCreationTime`
      self.`maxResults` = `maxResults`
      self.`minCreationTime` = `minCreationTime`
      self.`pageToken` = `pageToken`
      self.`parentJobId` = `parentJobId`
      self.`projectId` = `projectId`
      self.`projection` = `projection`
      self.`stateFilter` = `stateFilter`
    }
    public var allUsers : Bool?
    public var maxCreationTime : String?
    public var maxResults : Int?
    public var minCreationTime : String?
    public var pageToken : String?
    public var parentJobId : String?
    public var projectId : String?
    public var projection : String?
    public var stateFilter : String?
    public func queryParameters() -> [String] {
      return ["allUsers","maxCreationTime","maxResults","minCreationTime","pageToken","parentJobId","projection","stateFilter"]
    }
    public func pathParameters() -> [String] {
      return ["projectId"]
    }
  }

  public func jobs_list (
    parameters: JobsListParameters,
    completion: @escaping (JobList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "projects/{projectId}/jobs",
        parameters: parameters,
        completion: completion)
  }

  public struct JobsQueryParameters : Parameterizable {
    public init (`projectId`: String?) {
      self.`projectId` = `projectId`
    }
    public var projectId : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["projectId"]
    }
  }

  public func jobs_query (
    request: QueryRequest,
    parameters: JobsQueryParameters,
    completion: @escaping (QueryResponse?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "projects/{projectId}/queries",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct ModelsDeleteParameters : Parameterizable {
    public init (`datasetId`: String?, `modelId`: String?, `projectId`: String?) {
      self.`datasetId` = `datasetId`
      self.`modelId` = `modelId`
      self.`projectId` = `projectId`
    }
    public var datasetId : String?
    public var modelId : String?
    public var projectId : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["datasetId","modelId","projectId"]
    }
  }

  public func models_delete (
    parameters: ModelsDeleteParameters,
    completion: @escaping (Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "projects/{+projectId}/datasets/{+datasetId}/models/{+modelId}",
        parameters: parameters,
        completion: completion)
  }

  public struct ModelsGetParameters : Parameterizable {
    public init (`datasetId`: String?, `modelId`: String?, `projectId`: String?) {
      self.`datasetId` = `datasetId`
      self.`modelId` = `modelId`
      self.`projectId` = `projectId`
    }
    public var datasetId : String?
    public var modelId : String?
    public var projectId : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["datasetId","modelId","projectId"]
    }
  }

  public func models_get (
    parameters: ModelsGetParameters,
    completion: @escaping (Model?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "projects/{+projectId}/datasets/{+datasetId}/models/{+modelId}",
        parameters: parameters,
        completion: completion)
  }

  public struct ModelsListParameters : Parameterizable {
    public init (`datasetId`: String?, `maxResults`: Int?, `pageToken`: String?, `projectId`: String?) {
      self.`datasetId` = `datasetId`
      self.`maxResults` = `maxResults`
      self.`pageToken` = `pageToken`
      self.`projectId` = `projectId`
    }
    public var datasetId : String?
    public var maxResults : Int?
    public var pageToken : String?
    public var projectId : String?
    public func queryParameters() -> [String] {
      return ["maxResults","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["datasetId","projectId"]
    }
  }

  public func models_list (
    parameters: ModelsListParameters,
    completion: @escaping (ListModelsResponse?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "projects/{+projectId}/datasets/{+datasetId}/models",
        parameters: parameters,
        completion: completion)
  }

  public struct ModelsPatchParameters : Parameterizable {
    public init (`datasetId`: String?, `modelId`: String?, `projectId`: String?) {
      self.`datasetId` = `datasetId`
      self.`modelId` = `modelId`
      self.`projectId` = `projectId`
    }
    public var datasetId : String?
    public var modelId : String?
    public var projectId : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["datasetId","modelId","projectId"]
    }
  }

  public func models_patch (
    request: Model,
    parameters: ModelsPatchParameters,
    completion: @escaping (Model?, Error?) -> ()) throws {
      try perform(
        method: "PATCH",
        path: "projects/{+projectId}/datasets/{+datasetId}/models/{+modelId}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct ProjectsGetServiceAccountParameters : Parameterizable {
    public init (`projectId`: String?) {
      self.`projectId` = `projectId`
    }
    public var projectId : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["projectId"]
    }
  }

  public func projects_getServiceAccount (
    parameters: ProjectsGetServiceAccountParameters,
    completion: @escaping (GetServiceAccountResponse?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "projects/{projectId}/serviceAccount",
        parameters: parameters,
        completion: completion)
  }

  public struct ProjectsListParameters : Parameterizable {
    public init (`maxResults`: Int?, `pageToken`: String?) {
      self.`maxResults` = `maxResults`
      self.`pageToken` = `pageToken`
    }
    public var maxResults : Int?
    public var pageToken : String?
    public func queryParameters() -> [String] {
      return ["maxResults","pageToken"]
    }
    public func pathParameters() -> [String] {
      return []
    }
  }

  public func projects_list (
    parameters: ProjectsListParameters,
    completion: @escaping (ProjectList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "projects",
        parameters: parameters,
        completion: completion)
  }

  public struct RoutinesDeleteParameters : Parameterizable {
    public init (`datasetId`: String?, `projectId`: String?, `routineId`: String?) {
      self.`datasetId` = `datasetId`
      self.`projectId` = `projectId`
      self.`routineId` = `routineId`
    }
    public var datasetId : String?
    public var projectId : String?
    public var routineId : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["datasetId","projectId","routineId"]
    }
  }

  public func routines_delete (
    parameters: RoutinesDeleteParameters,
    completion: @escaping (Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "projects/{+projectId}/datasets/{+datasetId}/routines/{+routineId}",
        parameters: parameters,
        completion: completion)
  }

  public struct RoutinesGetParameters : Parameterizable {
    public init (`datasetId`: String?, `projectId`: String?, `readMask`: String?, `routineId`: String?) {
      self.`datasetId` = `datasetId`
      self.`projectId` = `projectId`
      self.`readMask` = `readMask`
      self.`routineId` = `routineId`
    }
    public var datasetId : String?
    public var projectId : String?
    public var readMask : String?
    public var routineId : String?
    public func queryParameters() -> [String] {
      return ["readMask"]
    }
    public func pathParameters() -> [String] {
      return ["datasetId","projectId","routineId"]
    }
  }

  public func routines_get (
    parameters: RoutinesGetParameters,
    completion: @escaping (Routine?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "projects/{+projectId}/datasets/{+datasetId}/routines/{+routineId}",
        parameters: parameters,
        completion: completion)
  }

  public struct RoutinesInsertParameters : Parameterizable {
    public init (`datasetId`: String?, `projectId`: String?) {
      self.`datasetId` = `datasetId`
      self.`projectId` = `projectId`
    }
    public var datasetId : String?
    public var projectId : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["datasetId","projectId"]
    }
  }

  public func routines_insert (
    request: Routine,
    parameters: RoutinesInsertParameters,
    completion: @escaping (Routine?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "projects/{+projectId}/datasets/{+datasetId}/routines",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct RoutinesListParameters : Parameterizable {
    public init (`datasetId`: String?, `filter`: String?, `maxResults`: Int?, `pageToken`: String?, `projectId`: String?, `readMask`: String?) {
      self.`datasetId` = `datasetId`
      self.`filter` = `filter`
      self.`maxResults` = `maxResults`
      self.`pageToken` = `pageToken`
      self.`projectId` = `projectId`
      self.`readMask` = `readMask`
    }
    public var datasetId : String?
    public var filter : String?
    public var maxResults : Int?
    public var pageToken : String?
    public var projectId : String?
    public var readMask : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","pageToken","readMask"]
    }
    public func pathParameters() -> [String] {
      return ["datasetId","projectId"]
    }
  }

  public func routines_list (
    parameters: RoutinesListParameters,
    completion: @escaping (ListRoutinesResponse?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "projects/{+projectId}/datasets/{+datasetId}/routines",
        parameters: parameters,
        completion: completion)
  }

  public struct RoutinesUpdateParameters : Parameterizable {
    public init (`datasetId`: String?, `projectId`: String?, `routineId`: String?) {
      self.`datasetId` = `datasetId`
      self.`projectId` = `projectId`
      self.`routineId` = `routineId`
    }
    public var datasetId : String?
    public var projectId : String?
    public var routineId : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["datasetId","projectId","routineId"]
    }
  }

  public func routines_update (
    request: Routine,
    parameters: RoutinesUpdateParameters,
    completion: @escaping (Routine?, Error?) -> ()) throws {
      try perform(
        method: "PUT",
        path: "projects/{+projectId}/datasets/{+datasetId}/routines/{+routineId}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct TabledataInsertAllParameters : Parameterizable {
    public init (`datasetId`: String?, `projectId`: String?, `tableId`: String?) {
      self.`datasetId` = `datasetId`
      self.`projectId` = `projectId`
      self.`tableId` = `tableId`
    }
    public var datasetId : String?
    public var projectId : String?
    public var tableId : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["datasetId","projectId","tableId"]
    }
  }

  public func tabledata_insertAll (
    request: TableDataInsertAllRequest,
    parameters: TabledataInsertAllParameters,
    completion: @escaping (TableDataInsertAllResponse?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "projects/{projectId}/datasets/{datasetId}/tables/{tableId}/insertAll",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct TabledataListParameters : Parameterizable {
    public init (`datasetId`: String?, `maxResults`: Int?, `pageToken`: String?, `projectId`: String?, `selectedFields`: String?, `startIndex`: String?, `tableId`: String?) {
      self.`datasetId` = `datasetId`
      self.`maxResults` = `maxResults`
      self.`pageToken` = `pageToken`
      self.`projectId` = `projectId`
      self.`selectedFields` = `selectedFields`
      self.`startIndex` = `startIndex`
      self.`tableId` = `tableId`
    }
    public var datasetId : String?
    public var maxResults : Int?
    public var pageToken : String?
    public var projectId : String?
    public var selectedFields : String?
    public var startIndex : String?
    public var tableId : String?
    public func queryParameters() -> [String] {
      return ["maxResults","pageToken","selectedFields","startIndex"]
    }
    public func pathParameters() -> [String] {
      return ["datasetId","projectId","tableId"]
    }
  }

  public func tabledata_list (
    parameters: TabledataListParameters,
    completion: @escaping (TableDataList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "projects/{projectId}/datasets/{datasetId}/tables/{tableId}/data",
        parameters: parameters,
        completion: completion)
  }

  public struct TablesDeleteParameters : Parameterizable {
    public init (`datasetId`: String?, `projectId`: String?, `tableId`: String?) {
      self.`datasetId` = `datasetId`
      self.`projectId` = `projectId`
      self.`tableId` = `tableId`
    }
    public var datasetId : String?
    public var projectId : String?
    public var tableId : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["datasetId","projectId","tableId"]
    }
  }

  public func tables_delete (
    parameters: TablesDeleteParameters,
    completion: @escaping (Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "projects/{projectId}/datasets/{datasetId}/tables/{tableId}",
        parameters: parameters,
        completion: completion)
  }

  public struct TablesGetParameters : Parameterizable {
    public init (`datasetId`: String?, `projectId`: String?, `selectedFields`: String?, `tableId`: String?) {
      self.`datasetId` = `datasetId`
      self.`projectId` = `projectId`
      self.`selectedFields` = `selectedFields`
      self.`tableId` = `tableId`
    }
    public var datasetId : String?
    public var projectId : String?
    public var selectedFields : String?
    public var tableId : String?
    public func queryParameters() -> [String] {
      return ["selectedFields"]
    }
    public func pathParameters() -> [String] {
      return ["datasetId","projectId","tableId"]
    }
  }

  public func tables_get (
    parameters: TablesGetParameters,
    completion: @escaping (Table?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "projects/{projectId}/datasets/{datasetId}/tables/{tableId}",
        parameters: parameters,
        completion: completion)
  }

  public struct TablesInsertParameters : Parameterizable {
    public init (`datasetId`: String?, `projectId`: String?) {
      self.`datasetId` = `datasetId`
      self.`projectId` = `projectId`
    }
    public var datasetId : String?
    public var projectId : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["datasetId","projectId"]
    }
  }

  public func tables_insert (
    request: Table,
    parameters: TablesInsertParameters,
    completion: @escaping (Table?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "projects/{projectId}/datasets/{datasetId}/tables",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct TablesListParameters : Parameterizable {
    public init (`datasetId`: String?, `maxResults`: Int?, `pageToken`: String?, `projectId`: String?) {
      self.`datasetId` = `datasetId`
      self.`maxResults` = `maxResults`
      self.`pageToken` = `pageToken`
      self.`projectId` = `projectId`
    }
    public var datasetId : String?
    public var maxResults : Int?
    public var pageToken : String?
    public var projectId : String?
    public func queryParameters() -> [String] {
      return ["maxResults","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["datasetId","projectId"]
    }
  }

  public func tables_list (
    parameters: TablesListParameters,
    completion: @escaping (TableList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "projects/{projectId}/datasets/{datasetId}/tables",
        parameters: parameters,
        completion: completion)
  }

  public struct TablesPatchParameters : Parameterizable {
    public init (`datasetId`: String?, `projectId`: String?, `tableId`: String?) {
      self.`datasetId` = `datasetId`
      self.`projectId` = `projectId`
      self.`tableId` = `tableId`
    }
    public var datasetId : String?
    public var projectId : String?
    public var tableId : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["datasetId","projectId","tableId"]
    }
  }

  public func tables_patch (
    request: Table,
    parameters: TablesPatchParameters,
    completion: @escaping (Table?, Error?) -> ()) throws {
      try perform(
        method: "PATCH",
        path: "projects/{projectId}/datasets/{datasetId}/tables/{tableId}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct TablesUpdateParameters : Parameterizable {
    public init (`datasetId`: String?, `projectId`: String?, `tableId`: String?) {
      self.`datasetId` = `datasetId`
      self.`projectId` = `projectId`
      self.`tableId` = `tableId`
    }
    public var datasetId : String?
    public var projectId : String?
    public var tableId : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["datasetId","projectId","tableId"]
    }
  }

  public func tables_update (
    request: Table,
    parameters: TablesUpdateParameters,
    completion: @escaping (Table?, Error?) -> ()) throws {
      try perform(
        method: "PUT",
        path: "projects/{projectId}/datasets/{datasetId}/tables/{tableId}",
        request: request,
        parameters: parameters,
        completion: completion)
  }
}

