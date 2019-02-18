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

public class Compute : Service {

  init(tokenProvider: TokenProvider) throws {
    try super.init(tokenProvider, "https://www.googleapis.com/compute/v1/projects/")
  }

  public class Object : Codable {}

  public struct AcceleratorConfig : Codable {
    public var `acceleratorCount` : Int?
    public var `acceleratorType` : String?
  }

  public struct AcceleratorType : Codable {
    public var `creationTimestamp` : String?
    public var `deprecated` : DeprecationStatus?
    public var `description` : String?
    public var `id` : String?
    public var `kind` : String?
    public var `maximumCardsPerInstance` : Int?
    public var `name` : String?
    public var `selfLink` : String?
    public var `zone` : String?
  }

  public struct AcceleratorTypeAggregatedList : Codable {
    public var `id` : String?
    public var `items` : Object?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct AcceleratorTypeList : Codable {
    public var `id` : String?
    public var `items` : [AcceleratorType]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct AcceleratorTypesScopedList : Codable {
    public var `acceleratorTypes` : [AcceleratorType]?
    public var `warning` : Object?
  }

  public struct AccessConfig : Codable {
    public var `kind` : String?
    public var `name` : String?
    public var `natIP` : String?
    public var `networkTier` : String?
    public var `publicPtrDomainName` : String?
    public var `setPublicPtr` : Bool?
    public var `type` : String?
  }

  public struct Address : Codable {
    public var `address` : String?
    public var `addressType` : String?
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `id` : String?
    public var `ipVersion` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `network` : String?
    public var `networkTier` : String?
    public var `prefixLength` : Int?
    public var `purpose` : String?
    public var `region` : String?
    public var `selfLink` : String?
    public var `status` : String?
    public var `subnetwork` : String?
    public var `users` : [String]?
  }

  public struct AddressAggregatedList : Codable {
    public var `id` : String?
    public var `items` : Object?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct AddressList : Codable {
    public var `id` : String?
    public var `items` : [Address]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct AddressesScopedList : Codable {
    public var `addresses` : [Address]?
    public var `warning` : Object?
  }

  public struct AliasIpRange : Codable {
    public var `ipCidrRange` : String?
    public var `subnetworkRangeName` : String?
  }

  public struct AttachedDisk : Codable {
    public var `autoDelete` : Bool?
    public var `boot` : Bool?
    public var `deviceName` : String?
    public var `diskEncryptionKey` : CustomerEncryptionKey?
    public var `guestOsFeatures` : [GuestOsFeature]?
    public var `index` : Int?
    public var `initializeParams` : AttachedDiskInitializeParams?
    public var `interface` : String?
    public var `kind` : String?
    public var `licenses` : [String]?
    public var `mode` : String?
    public var `source` : String?
    public var `type` : String?
  }

  public struct AttachedDiskInitializeParams : Codable {
    public var `description` : String?
    public var `diskName` : String?
    public var `diskSizeGb` : String?
    public var `diskType` : String?
    public var `labels` : Object?
    public var `sourceImage` : String?
    public var `sourceImageEncryptionKey` : CustomerEncryptionKey?
  }

  public struct AuditConfig : Codable {
    public var `auditLogConfigs` : [AuditLogConfig]?
    public var `exemptedMembers` : [String]?
    public var `service` : String?
  }

  public struct AuditLogConfig : Codable {
    public var `exemptedMembers` : [String]?
    public var `logType` : String?
  }

  public struct AuthorizationLoggingOptions : Codable {
    public var `permissionType` : String?
  }

  public struct Autoscaler : Codable {
    public var `autoscalingPolicy` : AutoscalingPolicy?
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `id` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `region` : String?
    public var `selfLink` : String?
    public var `status` : String?
    public var `statusDetails` : [AutoscalerStatusDetails]?
    public var `target` : String?
    public var `zone` : String?
  }

  public struct AutoscalerAggregatedList : Codable {
    public var `id` : String?
    public var `items` : Object?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct AutoscalerList : Codable {
    public var `id` : String?
    public var `items` : [Autoscaler]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct AutoscalerStatusDetails : Codable {
    public var `message` : String?
    public var `type` : String?
  }

  public struct AutoscalersScopedList : Codable {
    public var `autoscalers` : [Autoscaler]?
    public var `warning` : Object?
  }

  public struct AutoscalingPolicy : Codable {
    public var `coolDownPeriodSec` : Int?
    public var `cpuUtilization` : AutoscalingPolicyCpuUtilization?
    public var `customMetricUtilizations` : [AutoscalingPolicyCustomMetricUtilization]?
    public var `loadBalancingUtilization` : AutoscalingPolicyLoadBalancingUtilization?
    public var `maxNumReplicas` : Int?
    public var `minNumReplicas` : Int?
  }

  public struct AutoscalingPolicyCpuUtilization : Codable {
    public var `utilizationTarget` : Float?
  }

  public struct AutoscalingPolicyCustomMetricUtilization : Codable {
    public var `metric` : String?
    public var `utilizationTarget` : Float?
    public var `utilizationTargetType` : String?
  }

  public struct AutoscalingPolicyLoadBalancingUtilization : Codable {
    public var `utilizationTarget` : Float?
  }

  public struct Backend : Codable {
    public var `balancingMode` : String?
    public var `capacityScaler` : Float?
    public var `description` : String?
    public var `group` : String?
    public var `maxConnections` : Int?
    public var `maxConnectionsPerInstance` : Int?
    public var `maxRate` : Int?
    public var `maxRatePerInstance` : Float?
    public var `maxUtilization` : Float?
  }

  public struct BackendBucket : Codable {
    public var `bucketName` : String?
    public var `cdnPolicy` : BackendBucketCdnPolicy?
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `enableCdn` : Bool?
    public var `id` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `selfLink` : String?
  }

  public struct BackendBucketCdnPolicy : Codable {
    public var `signedUrlCacheMaxAgeSec` : String?
    public var `signedUrlKeyNames` : [String]?
  }

  public struct BackendBucketList : Codable {
    public var `id` : String?
    public var `items` : [BackendBucket]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct BackendService : Codable {
    public var `affinityCookieTtlSec` : Int?
    public var `backends` : [Backend]?
    public var `cdnPolicy` : BackendServiceCdnPolicy?
    public var `connectionDraining` : ConnectionDraining?
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `enableCDN` : Bool?
    public var `fingerprint` : String?
    public var `healthChecks` : [String]?
    public var `iap` : BackendServiceIAP?
    public var `id` : String?
    public var `kind` : String?
    public var `loadBalancingScheme` : String?
    public var `name` : String?
    public var `port` : Int?
    public var `portName` : String?
    public var `protocol` : String?
    public var `region` : String?
    public var `securityPolicy` : String?
    public var `selfLink` : String?
    public var `sessionAffinity` : String?
    public var `timeoutSec` : Int?
  }

  public struct BackendServiceAggregatedList : Codable {
    public var `id` : String?
    public var `items` : Object?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct BackendServiceCdnPolicy : Codable {
    public var `cacheKeyPolicy` : CacheKeyPolicy?
    public var `signedUrlCacheMaxAgeSec` : String?
    public var `signedUrlKeyNames` : [String]?
  }

  public struct BackendServiceGroupHealth : Codable {
    public var `healthStatus` : [HealthStatus]?
    public var `kind` : String?
  }

  public struct BackendServiceIAP : Codable {
    public var `enabled` : Bool?
    public var `oauth2ClientId` : String?
    public var `oauth2ClientSecret` : String?
    public var `oauth2ClientSecretSha256` : String?
  }

  public struct BackendServiceList : Codable {
    public var `id` : String?
    public var `items` : [BackendService]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct BackendServicesScopedList : Codable {
    public var `backendServices` : [BackendService]?
    public var `warning` : Object?
  }

  public struct Binding : Codable {
    public var `condition` : Expr?
    public var `members` : [String]?
    public var `role` : String?
  }

  public struct CacheInvalidationRule : Codable {
    public var `host` : String?
    public var `path` : String?
  }

  public struct CacheKeyPolicy : Codable {
    public var `includeHost` : Bool?
    public var `includeProtocol` : Bool?
    public var `includeQueryString` : Bool?
    public var `queryStringBlacklist` : [String]?
    public var `queryStringWhitelist` : [String]?
  }

  public struct Commitment : Codable {
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `endTimestamp` : String?
    public var `id` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `plan` : String?
    public var `region` : String?
    public var `resources` : [ResourceCommitment]?
    public var `selfLink` : String?
    public var `startTimestamp` : String?
    public var `status` : String?
    public var `statusMessage` : String?
  }

  public struct CommitmentAggregatedList : Codable {
    public var `id` : String?
    public var `items` : Object?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct CommitmentList : Codable {
    public var `id` : String?
    public var `items` : [Commitment]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct CommitmentsScopedList : Codable {
    public var `commitments` : [Commitment]?
    public var `warning` : Object?
  }

  public struct Condition : Codable {
    public var `iam` : String?
    public var `op` : String?
    public var `svc` : String?
    public var `sys` : String?
    public var `value` : String?
    public var `values` : [String]?
  }

  public struct ConnectionDraining : Codable {
    public var `drainingTimeoutSec` : Int?
  }

  public struct CustomerEncryptionKey : Codable {
    public var `kmsKeyName` : String?
    public var `rawKey` : String?
    public var `sha256` : String?
  }

  public struct CustomerEncryptionKeyProtectedDisk : Codable {
    public var `diskEncryptionKey` : CustomerEncryptionKey?
    public var `source` : String?
  }

  public struct DeprecationStatus : Codable {
    public var `deleted` : String?
    public var `deprecated` : String?
    public var `obsolete` : String?
    public var `replacement` : String?
    public var `state` : String?
  }

  public struct Disk : Codable {
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `diskEncryptionKey` : CustomerEncryptionKey?
    public var `guestOsFeatures` : [GuestOsFeature]?
    public var `id` : String?
    public var `kind` : String?
    public var `labelFingerprint` : String?
    public var `labels` : Object?
    public var `lastAttachTimestamp` : String?
    public var `lastDetachTimestamp` : String?
    public var `licenseCodes` : [String]?
    public var `licenses` : [String]?
    public var `name` : String?
    public var `options` : String?
    public var `physicalBlockSizeBytes` : String?
    public var `region` : String?
    public var `replicaZones` : [String]?
    public var `selfLink` : String?
    public var `sizeGb` : String?
    public var `sourceImage` : String?
    public var `sourceImageEncryptionKey` : CustomerEncryptionKey?
    public var `sourceImageId` : String?
    public var `sourceSnapshot` : String?
    public var `sourceSnapshotEncryptionKey` : CustomerEncryptionKey?
    public var `sourceSnapshotId` : String?
    public var `status` : String?
    public var `type` : String?
    public var `users` : [String]?
    public var `zone` : String?
  }

  public struct DiskAggregatedList : Codable {
    public var `id` : String?
    public var `items` : Object?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct DiskInstantiationConfig : Codable {
    public var `autoDelete` : Bool?
    public var `customImage` : String?
    public var `deviceName` : String?
    public var `instantiateFrom` : String?
  }

  public struct DiskList : Codable {
    public var `id` : String?
    public var `items` : [Disk]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct DiskMoveRequest : Codable {
    public var `destinationZone` : String?
    public var `targetDisk` : String?
  }

  public struct DiskType : Codable {
    public var `creationTimestamp` : String?
    public var `defaultDiskSizeGb` : String?
    public var `deprecated` : DeprecationStatus?
    public var `description` : String?
    public var `id` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `region` : String?
    public var `selfLink` : String?
    public var `validDiskSize` : String?
    public var `zone` : String?
  }

  public struct DiskTypeAggregatedList : Codable {
    public var `id` : String?
    public var `items` : Object?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct DiskTypeList : Codable {
    public var `id` : String?
    public var `items` : [DiskType]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct DiskTypesScopedList : Codable {
    public var `diskTypes` : [DiskType]?
    public var `warning` : Object?
  }

  public struct DisksResizeRequest : Codable {
    public var `sizeGb` : String?
  }

  public struct DisksScopedList : Codable {
    public var `disks` : [Disk]?
    public var `warning` : Object?
  }

  public struct DistributionPolicy : Codable {
    public var `zones` : [DistributionPolicyZoneConfiguration]?
  }

  public struct DistributionPolicyZoneConfiguration : Codable {
    public var `zone` : String?
  }

  public struct Expr : Codable {
    public var `description` : String?
    public var `expression` : String?
    public var `location` : String?
    public var `title` : String?
  }

  public struct Firewall : Codable {
    public var `allowed` : [Object]?
    public var `creationTimestamp` : String?
    public var `denied` : [Object]?
    public var `description` : String?
    public var `destinationRanges` : [String]?
    public var `direction` : String?
    public var `disabled` : Bool?
    public var `id` : String?
    public var `kind` : String?
    public var `logConfig` : FirewallLogConfig?
    public var `name` : String?
    public var `network` : String?
    public var `priority` : Int?
    public var `selfLink` : String?
    public var `sourceRanges` : [String]?
    public var `sourceServiceAccounts` : [String]?
    public var `sourceTags` : [String]?
    public var `targetServiceAccounts` : [String]?
    public var `targetTags` : [String]?
  }

  public struct FirewallList : Codable {
    public var `id` : String?
    public var `items` : [Firewall]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct FirewallLogConfig : Codable {
    public var `enable` : Bool?
  }

  public struct FixedOrPercent : Codable {
    public var `calculated` : Int?
    public var `fixed` : Int?
    public var `percent` : Int?
  }

  public struct ForwardingRule : Codable {
    public var `IPAddress` : String?
    public var `IPProtocol` : String?
    public var `backendService` : String?
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `id` : String?
    public var `ipVersion` : String?
    public var `kind` : String?
    public var `loadBalancingScheme` : String?
    public var `name` : String?
    public var `network` : String?
    public var `networkTier` : String?
    public var `portRange` : String?
    public var `ports` : [String]?
    public var `region` : String?
    public var `selfLink` : String?
    public var `serviceLabel` : String?
    public var `serviceName` : String?
    public var `subnetwork` : String?
    public var `target` : String?
  }

  public struct ForwardingRuleAggregatedList : Codable {
    public var `id` : String?
    public var `items` : Object?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct ForwardingRuleList : Codable {
    public var `id` : String?
    public var `items` : [ForwardingRule]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct ForwardingRulesScopedList : Codable {
    public var `forwardingRules` : [ForwardingRule]?
    public var `warning` : Object?
  }

  public struct GlobalSetLabelsRequest : Codable {
    public var `labelFingerprint` : String?
    public var `labels` : Object?
  }

  public struct GlobalSetPolicyRequest : Codable {
    public var `bindings` : [Binding]?
    public var `etag` : String?
    public var `policy` : Policy?
  }

  public struct GuestOsFeature : Codable {
    public var `type` : String?
  }

  public struct HTTPHealthCheck : Codable {
    public var `host` : String?
    public var `port` : Int?
    public var `portName` : String?
    public var `proxyHeader` : String?
    public var `requestPath` : String?
    public var `response` : String?
  }

  public struct HTTPSHealthCheck : Codable {
    public var `host` : String?
    public var `port` : Int?
    public var `portName` : String?
    public var `proxyHeader` : String?
    public var `requestPath` : String?
    public var `response` : String?
  }

  public struct HealthCheck : Codable {
    public var `checkIntervalSec` : Int?
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `healthyThreshold` : Int?
    public var `httpHealthCheck` : HTTPHealthCheck?
    public var `httpsHealthCheck` : HTTPSHealthCheck?
    public var `id` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `selfLink` : String?
    public var `sslHealthCheck` : SSLHealthCheck?
    public var `tcpHealthCheck` : TCPHealthCheck?
    public var `timeoutSec` : Int?
    public var `type` : String?
    public var `unhealthyThreshold` : Int?
  }

  public struct HealthCheckList : Codable {
    public var `id` : String?
    public var `items` : [HealthCheck]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct HealthCheckReference : Codable {
    public var `healthCheck` : String?
  }

  public struct HealthStatus : Codable {
    public var `healthState` : String?
    public var `instance` : String?
    public var `ipAddress` : String?
    public var `port` : Int?
  }

  public struct HostRule : Codable {
    public var `description` : String?
    public var `hosts` : [String]?
    public var `pathMatcher` : String?
  }

  public struct HttpHealthCheck : Codable {
    public var `checkIntervalSec` : Int?
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `healthyThreshold` : Int?
    public var `host` : String?
    public var `id` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `port` : Int?
    public var `requestPath` : String?
    public var `selfLink` : String?
    public var `timeoutSec` : Int?
    public var `unhealthyThreshold` : Int?
  }

  public struct HttpHealthCheckList : Codable {
    public var `id` : String?
    public var `items` : [HttpHealthCheck]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct HttpsHealthCheck : Codable {
    public var `checkIntervalSec` : Int?
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `healthyThreshold` : Int?
    public var `host` : String?
    public var `id` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `port` : Int?
    public var `requestPath` : String?
    public var `selfLink` : String?
    public var `timeoutSec` : Int?
    public var `unhealthyThreshold` : Int?
  }

  public struct HttpsHealthCheckList : Codable {
    public var `id` : String?
    public var `items` : [HttpsHealthCheck]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct Image : Codable {
    public var `archiveSizeBytes` : String?
    public var `creationTimestamp` : String?
    public var `deprecated` : DeprecationStatus?
    public var `description` : String?
    public var `diskSizeGb` : String?
    public var `family` : String?
    public var `guestOsFeatures` : [GuestOsFeature]?
    public var `id` : String?
    public var `imageEncryptionKey` : CustomerEncryptionKey?
    public var `kind` : String?
    public var `labelFingerprint` : String?
    public var `labels` : Object?
    public var `licenseCodes` : [String]?
    public var `licenses` : [String]?
    public var `name` : String?
    public var `rawDisk` : Object?
    public var `selfLink` : String?
    public var `sourceDisk` : String?
    public var `sourceDiskEncryptionKey` : CustomerEncryptionKey?
    public var `sourceDiskId` : String?
    public var `sourceImage` : String?
    public var `sourceImageEncryptionKey` : CustomerEncryptionKey?
    public var `sourceImageId` : String?
    public var `sourceSnapshot` : String?
    public var `sourceSnapshotEncryptionKey` : CustomerEncryptionKey?
    public var `sourceSnapshotId` : String?
    public var `sourceType` : String?
    public var `status` : String?
  }

  public struct ImageList : Codable {
    public var `id` : String?
    public var `items` : [Image]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct Instance : Codable {
    public var `canIpForward` : Bool?
    public var `cpuPlatform` : String?
    public var `creationTimestamp` : String?
    public var `deletionProtection` : Bool?
    public var `description` : String?
    public var `disks` : [AttachedDisk]?
    public var `guestAccelerators` : [AcceleratorConfig]?
    public var `hostname` : String?
    public var `id` : String?
    public var `kind` : String?
    public var `labelFingerprint` : String?
    public var `labels` : Object?
    public var `machineType` : String?
    public var `metadata` : Metadata?
    public var `minCpuPlatform` : String?
    public var `name` : String?
    public var `networkInterfaces` : [NetworkInterface]?
    public var `scheduling` : Scheduling?
    public var `selfLink` : String?
    public var `serviceAccounts` : [ServiceAccount]?
    public var `startRestricted` : Bool?
    public var `status` : String?
    public var `statusMessage` : String?
    public var `tags` : Tags?
    public var `zone` : String?
  }

  public struct InstanceAggregatedList : Codable {
    public var `id` : String?
    public var `items` : Object?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct InstanceGroup : Codable {
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `fingerprint` : String?
    public var `id` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `namedPorts` : [NamedPort]?
    public var `network` : String?
    public var `region` : String?
    public var `selfLink` : String?
    public var `size` : Int?
    public var `subnetwork` : String?
    public var `zone` : String?
  }

  public struct InstanceGroupAggregatedList : Codable {
    public var `id` : String?
    public var `items` : Object?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct InstanceGroupList : Codable {
    public var `id` : String?
    public var `items` : [InstanceGroup]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct InstanceGroupManager : Codable {
    public var `autoHealingPolicies` : [InstanceGroupManagerAutoHealingPolicy]?
    public var `baseInstanceName` : String?
    public var `creationTimestamp` : String?
    public var `currentActions` : InstanceGroupManagerActionsSummary?
    public var `description` : String?
    public var `distributionPolicy` : DistributionPolicy?
    public var `fingerprint` : String?
    public var `id` : String?
    public var `instanceGroup` : String?
    public var `instanceTemplate` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `namedPorts` : [NamedPort]?
    public var `region` : String?
    public var `selfLink` : String?
    public var `status` : InstanceGroupManagerStatus?
    public var `targetPools` : [String]?
    public var `targetSize` : Int?
    public var `updatePolicy` : InstanceGroupManagerUpdatePolicy?
    public var `versions` : [InstanceGroupManagerVersion]?
    public var `zone` : String?
  }

  public struct InstanceGroupManagerActionsSummary : Codable {
    public var `abandoning` : Int?
    public var `creating` : Int?
    public var `creatingWithoutRetries` : Int?
    public var `deleting` : Int?
    public var `none` : Int?
    public var `recreating` : Int?
    public var `refreshing` : Int?
    public var `restarting` : Int?
    public var `verifying` : Int?
  }

  public struct InstanceGroupManagerAggregatedList : Codable {
    public var `id` : String?
    public var `items` : Object?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct InstanceGroupManagerAutoHealingPolicy : Codable {
    public var `healthCheck` : String?
    public var `initialDelaySec` : Int?
  }

  public struct InstanceGroupManagerList : Codable {
    public var `id` : String?
    public var `items` : [InstanceGroupManager]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct InstanceGroupManagerStatus : Codable {
    public var `isStable` : Bool?
  }

  public struct InstanceGroupManagerUpdatePolicy : Codable {
    public var `maxSurge` : FixedOrPercent?
    public var `maxUnavailable` : FixedOrPercent?
    public var `minimalAction` : String?
    public var `type` : String?
  }

  public struct InstanceGroupManagerVersion : Codable {
    public var `instanceTemplate` : String?
    public var `name` : String?
    public var `targetSize` : FixedOrPercent?
  }

  public struct InstanceGroupManagersAbandonInstancesRequest : Codable {
    public var `instances` : [String]?
  }

  public struct InstanceGroupManagersDeleteInstancesRequest : Codable {
    public var `instances` : [String]?
  }

  public struct InstanceGroupManagersListManagedInstancesResponse : Codable {
    public var `managedInstances` : [ManagedInstance]?
  }

  public struct InstanceGroupManagersRecreateInstancesRequest : Codable {
    public var `instances` : [String]?
  }

  public struct InstanceGroupManagersScopedList : Codable {
    public var `instanceGroupManagers` : [InstanceGroupManager]?
    public var `warning` : Object?
  }

  public struct InstanceGroupManagersSetInstanceTemplateRequest : Codable {
    public var `instanceTemplate` : String?
  }

  public struct InstanceGroupManagersSetTargetPoolsRequest : Codable {
    public var `fingerprint` : String?
    public var `targetPools` : [String]?
  }

  public struct InstanceGroupsAddInstancesRequest : Codable {
    public var `instances` : [InstanceReference]?
  }

  public struct InstanceGroupsListInstances : Codable {
    public var `id` : String?
    public var `items` : [InstanceWithNamedPorts]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct InstanceGroupsListInstancesRequest : Codable {
    public var `instanceState` : String?
  }

  public struct InstanceGroupsRemoveInstancesRequest : Codable {
    public var `instances` : [InstanceReference]?
  }

  public struct InstanceGroupsScopedList : Codable {
    public var `instanceGroups` : [InstanceGroup]?
    public var `warning` : Object?
  }

  public struct InstanceGroupsSetNamedPortsRequest : Codable {
    public var `fingerprint` : String?
    public var `namedPorts` : [NamedPort]?
  }

  public struct InstanceList : Codable {
    public var `id` : String?
    public var `items` : [Instance]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct InstanceListReferrers : Codable {
    public var `id` : String?
    public var `items` : [Reference]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct InstanceMoveRequest : Codable {
    public var `destinationZone` : String?
    public var `targetInstance` : String?
  }

  public struct InstanceProperties : Codable {
    public var `canIpForward` : Bool?
    public var `description` : String?
    public var `disks` : [AttachedDisk]?
    public var `guestAccelerators` : [AcceleratorConfig]?
    public var `labels` : Object?
    public var `machineType` : String?
    public var `metadata` : Metadata?
    public var `minCpuPlatform` : String?
    public var `networkInterfaces` : [NetworkInterface]?
    public var `scheduling` : Scheduling?
    public var `serviceAccounts` : [ServiceAccount]?
    public var `tags` : Tags?
  }

  public struct InstanceReference : Codable {
    public var `instance` : String?
  }

  public struct InstanceTemplate : Codable {
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `id` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `properties` : InstanceProperties?
    public var `selfLink` : String?
    public var `sourceInstance` : String?
    public var `sourceInstanceParams` : SourceInstanceParams?
  }

  public struct InstanceTemplateList : Codable {
    public var `id` : String?
    public var `items` : [InstanceTemplate]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct InstanceWithNamedPorts : Codable {
    public var `instance` : String?
    public var `namedPorts` : [NamedPort]?
    public var `status` : String?
  }

  public struct InstancesScopedList : Codable {
    public var `instances` : [Instance]?
    public var `warning` : Object?
  }

  public struct InstancesSetLabelsRequest : Codable {
    public var `labelFingerprint` : String?
    public var `labels` : Object?
  }

  public struct InstancesSetMachineResourcesRequest : Codable {
    public var `guestAccelerators` : [AcceleratorConfig]?
  }

  public struct InstancesSetMachineTypeRequest : Codable {
    public var `machineType` : String?
  }

  public struct InstancesSetMinCpuPlatformRequest : Codable {
    public var `minCpuPlatform` : String?
  }

  public struct InstancesSetServiceAccountRequest : Codable {
    public var `email` : String?
    public var `scopes` : [String]?
  }

  public struct InstancesStartWithEncryptionKeyRequest : Codable {
    public var `disks` : [CustomerEncryptionKeyProtectedDisk]?
  }

  public struct Interconnect : Codable {
    public var `adminEnabled` : Bool?
    public var `circuitInfos` : [InterconnectCircuitInfo]?
    public var `creationTimestamp` : String?
    public var `customerName` : String?
    public var `description` : String?
    public var `expectedOutages` : [InterconnectOutageNotification]?
    public var `googleIpAddress` : String?
    public var `googleReferenceId` : String?
    public var `id` : String?
    public var `interconnectAttachments` : [String]?
    public var `interconnectType` : String?
    public var `kind` : String?
    public var `linkType` : String?
    public var `location` : String?
    public var `name` : String?
    public var `nocContactEmail` : String?
    public var `operationalStatus` : String?
    public var `peerIpAddress` : String?
    public var `provisionedLinkCount` : Int?
    public var `requestedLinkCount` : Int?
    public var `selfLink` : String?
    public var `state` : String?
  }

  public struct InterconnectAttachment : Codable {
    public var `adminEnabled` : Bool?
    public var `bandwidth` : String?
    public var `candidateSubnets` : [String]?
    public var `cloudRouterIpAddress` : String?
    public var `creationTimestamp` : String?
    public var `customerRouterIpAddress` : String?
    public var `description` : String?
    public var `edgeAvailabilityDomain` : String?
    public var `googleReferenceId` : String?
    public var `id` : String?
    public var `interconnect` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `operationalStatus` : String?
    public var `pairingKey` : String?
    public var `partnerAsn` : String?
    public var `partnerMetadata` : InterconnectAttachmentPartnerMetadata?
    public var `privateInterconnectInfo` : InterconnectAttachmentPrivateInfo?
    public var `region` : String?
    public var `router` : String?
    public var `selfLink` : String?
    public var `state` : String?
    public var `type` : String?
    public var `vlanTag8021q` : Int?
  }

  public struct InterconnectAttachmentAggregatedList : Codable {
    public var `id` : String?
    public var `items` : Object?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct InterconnectAttachmentList : Codable {
    public var `id` : String?
    public var `items` : [InterconnectAttachment]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct InterconnectAttachmentPartnerMetadata : Codable {
    public var `interconnectName` : String?
    public var `partnerName` : String?
    public var `portalUrl` : String?
  }

  public struct InterconnectAttachmentPrivateInfo : Codable {
    public var `tag8021q` : Int?
  }

  public struct InterconnectAttachmentsScopedList : Codable {
    public var `interconnectAttachments` : [InterconnectAttachment]?
    public var `warning` : Object?
  }

  public struct InterconnectCircuitInfo : Codable {
    public var `customerDemarcId` : String?
    public var `googleCircuitId` : String?
    public var `googleDemarcId` : String?
  }

  public struct InterconnectDiagnostics : Codable {
    public var `arpCaches` : [InterconnectDiagnosticsARPEntry]?
    public var `links` : [InterconnectDiagnosticsLinkStatus]?
    public var `macAddress` : String?
  }

  public struct InterconnectDiagnosticsARPEntry : Codable {
    public var `ipAddress` : String?
    public var `macAddress` : String?
  }

  public struct InterconnectDiagnosticsLinkLACPStatus : Codable {
    public var `googleSystemId` : String?
    public var `neighborSystemId` : String?
    public var `state` : String?
  }

  public struct InterconnectDiagnosticsLinkOpticalPower : Codable {
    public var `state` : String?
    public var `value` : Float?
  }

  public struct InterconnectDiagnosticsLinkStatus : Codable {
    public var `arpCaches` : [InterconnectDiagnosticsARPEntry]?
    public var `circuitId` : String?
    public var `googleDemarc` : String?
    public var `lacpStatus` : InterconnectDiagnosticsLinkLACPStatus?
    public var `receivingOpticalPower` : InterconnectDiagnosticsLinkOpticalPower?
    public var `transmittingOpticalPower` : InterconnectDiagnosticsLinkOpticalPower?
  }

  public struct InterconnectList : Codable {
    public var `id` : String?
    public var `items` : [Interconnect]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct InterconnectLocation : Codable {
    public var `address` : String?
    public var `availabilityZone` : String?
    public var `city` : String?
    public var `continent` : String?
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `facilityProvider` : String?
    public var `facilityProviderFacilityId` : String?
    public var `id` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `peeringdbFacilityId` : String?
    public var `regionInfos` : [InterconnectLocationRegionInfo]?
    public var `selfLink` : String?
    public var `status` : String?
  }

  public struct InterconnectLocationList : Codable {
    public var `id` : String?
    public var `items` : [InterconnectLocation]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct InterconnectLocationRegionInfo : Codable {
    public var `expectedRttMs` : String?
    public var `locationPresence` : String?
    public var `region` : String?
  }

  public struct InterconnectOutageNotification : Codable {
    public var `affectedCircuits` : [String]?
    public var `description` : String?
    public var `endTime` : String?
    public var `issueType` : String?
    public var `name` : String?
    public var `source` : String?
    public var `startTime` : String?
    public var `state` : String?
  }

  public struct InterconnectsGetDiagnosticsResponse : Codable {
    public var `result` : InterconnectDiagnostics?
  }

  public struct License : Codable {
    public var `chargesUseFee` : Bool?
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `id` : String?
    public var `kind` : String?
    public var `licenseCode` : String?
    public var `name` : String?
    public var `resourceRequirements` : LicenseResourceRequirements?
    public var `selfLink` : String?
    public var `transferable` : Bool?
  }

  public struct LicenseCode : Codable {
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `id` : String?
    public var `kind` : String?
    public var `licenseAlias` : [LicenseCodeLicenseAlias]?
    public var `name` : String?
    public var `selfLink` : String?
    public var `state` : String?
    public var `transferable` : Bool?
  }

  public struct LicenseCodeLicenseAlias : Codable {
    public var `description` : String?
    public var `selfLink` : String?
  }

  public struct LicenseResourceRequirements : Codable {
    public var `minGuestCpuCount` : Int?
    public var `minMemoryMb` : Int?
  }

  public struct LicensesListResponse : Codable {
    public var `id` : String?
    public var `items` : [License]?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct LogConfig : Codable {
    public var `cloudAudit` : LogConfigCloudAuditOptions?
    public var `counter` : LogConfigCounterOptions?
    public var `dataAccess` : LogConfigDataAccessOptions?
  }

  public struct LogConfigCloudAuditOptions : Codable {
    public var `authorizationLoggingOptions` : AuthorizationLoggingOptions?
    public var `logName` : String?
  }

  public struct LogConfigCounterOptions : Codable {
    public var `field` : String?
    public var `metric` : String?
  }

  public struct LogConfigDataAccessOptions : Codable {
    public var `logMode` : String?
  }

  public struct MachineType : Codable {
    public var `creationTimestamp` : String?
    public var `deprecated` : DeprecationStatus?
    public var `description` : String?
    public var `guestCpus` : Int?
    public var `id` : String?
    public var `imageSpaceGb` : Int?
    public var `isSharedCpu` : Bool?
    public var `kind` : String?
    public var `maximumPersistentDisks` : Int?
    public var `maximumPersistentDisksSizeGb` : String?
    public var `memoryMb` : Int?
    public var `name` : String?
    public var `scratchDisks` : [Object]?
    public var `selfLink` : String?
    public var `zone` : String?
  }

  public struct MachineTypeAggregatedList : Codable {
    public var `id` : String?
    public var `items` : Object?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct MachineTypeList : Codable {
    public var `id` : String?
    public var `items` : [MachineType]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct MachineTypesScopedList : Codable {
    public var `machineTypes` : [MachineType]?
    public var `warning` : Object?
  }

  public struct ManagedInstance : Codable {
    public var `currentAction` : String?
    public var `id` : String?
    public var `instance` : String?
    public var `instanceStatus` : String?
    public var `lastAttempt` : ManagedInstanceLastAttempt?
  }

  public struct ManagedInstanceLastAttempt : Codable {
    public var `errors` : Object?
  }

  public struct Metadata : Codable {
    public var `fingerprint` : String?
    public var `items` : [Object]?
    public var `kind` : String?
  }

  public struct NamedPort : Codable {
    public var `name` : String?
    public var `port` : Int?
  }

  public struct Network : Codable {
    public var `IPv4Range` : String?
    public var `autoCreateSubnetworks` : Bool?
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `gatewayIPv4` : String?
    public var `id` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `peerings` : [NetworkPeering]?
    public var `routingConfig` : NetworkRoutingConfig?
    public var `selfLink` : String?
    public var `subnetworks` : [String]?
  }

  public struct NetworkInterface : Codable {
    public var `accessConfigs` : [AccessConfig]?
    public var `aliasIpRanges` : [AliasIpRange]?
    public var `fingerprint` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `network` : String?
    public var `networkIP` : String?
    public var `subnetwork` : String?
  }

  public struct NetworkList : Codable {
    public var `id` : String?
    public var `items` : [Network]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct NetworkPeering : Codable {
    public var `autoCreateRoutes` : Bool?
    public var `name` : String?
    public var `network` : String?
    public var `state` : String?
    public var `stateDetails` : String?
  }

  public struct NetworkRoutingConfig : Codable {
    public var `routingMode` : String?
  }

  public struct NetworksAddPeeringRequest : Codable {
    public var `autoCreateRoutes` : Bool?
    public var `name` : String?
    public var `peerNetwork` : String?
  }

  public struct NetworksRemovePeeringRequest : Codable {
    public var `name` : String?
  }

  public struct NodeGroup : Codable {
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `id` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `nodeTemplate` : String?
    public var `selfLink` : String?
    public var `size` : Int?
    public var `status` : String?
    public var `zone` : String?
  }

  public struct NodeGroupAggregatedList : Codable {
    public var `id` : String?
    public var `items` : Object?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct NodeGroupList : Codable {
    public var `id` : String?
    public var `items` : [NodeGroup]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct NodeGroupNode : Codable {
    public var `instances` : [String]?
    public var `name` : String?
    public var `nodeType` : String?
    public var `status` : String?
  }

  public struct NodeGroupsAddNodesRequest : Codable {
    public var `additionalNodeCount` : Int?
  }

  public struct NodeGroupsDeleteNodesRequest : Codable {
    public var `nodes` : [String]?
  }

  public struct NodeGroupsListNodes : Codable {
    public var `id` : String?
    public var `items` : [NodeGroupNode]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct NodeGroupsScopedList : Codable {
    public var `nodeGroups` : [NodeGroup]?
    public var `warning` : Object?
  }

  public struct NodeGroupsSetNodeTemplateRequest : Codable {
    public var `nodeTemplate` : String?
  }

  public struct NodeTemplate : Codable {
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `id` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `nodeAffinityLabels` : Object?
    public var `nodeType` : String?
    public var `nodeTypeFlexibility` : NodeTemplateNodeTypeFlexibility?
    public var `region` : String?
    public var `selfLink` : String?
    public var `status` : String?
    public var `statusMessage` : String?
  }

  public struct NodeTemplateAggregatedList : Codable {
    public var `id` : String?
    public var `items` : Object?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct NodeTemplateList : Codable {
    public var `id` : String?
    public var `items` : [NodeTemplate]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct NodeTemplateNodeTypeFlexibility : Codable {
    public var `cpus` : String?
    public var `localSsd` : String?
    public var `memory` : String?
  }

  public struct NodeTemplatesScopedList : Codable {
    public var `nodeTemplates` : [NodeTemplate]?
    public var `warning` : Object?
  }

  public struct NodeType : Codable {
    public var `cpuPlatform` : String?
    public var `creationTimestamp` : String?
    public var `deprecated` : DeprecationStatus?
    public var `description` : String?
    public var `guestCpus` : Int?
    public var `id` : String?
    public var `kind` : String?
    public var `localSsdGb` : Int?
    public var `memoryMb` : Int?
    public var `name` : String?
    public var `selfLink` : String?
    public var `zone` : String?
  }

  public struct NodeTypeAggregatedList : Codable {
    public var `id` : String?
    public var `items` : Object?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct NodeTypeList : Codable {
    public var `id` : String?
    public var `items` : [NodeType]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct NodeTypesScopedList : Codable {
    public var `nodeTypes` : [NodeType]?
    public var `warning` : Object?
  }

  public struct Operation : Codable {
    public var `clientOperationId` : String?
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `endTime` : String?
    public var `error` : Object?
    public var `httpErrorMessage` : String?
    public var `httpErrorStatusCode` : Int?
    public var `id` : String?
    public var `insertTime` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `operationType` : String?
    public var `progress` : Int?
    public var `region` : String?
    public var `selfLink` : String?
    public var `startTime` : String?
    public var `status` : String?
    public var `statusMessage` : String?
    public var `targetId` : String?
    public var `targetLink` : String?
    public var `user` : String?
    public var `warnings` : [Object]?
    public var `zone` : String?
  }

  public struct OperationAggregatedList : Codable {
    public var `id` : String?
    public var `items` : Object?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct OperationList : Codable {
    public var `id` : String?
    public var `items` : [Operation]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct OperationsScopedList : Codable {
    public var `operations` : [Operation]?
    public var `warning` : Object?
  }

  public struct PathMatcher : Codable {
    public var `defaultService` : String?
    public var `description` : String?
    public var `name` : String?
    public var `pathRules` : [PathRule]?
  }

  public struct PathRule : Codable {
    public var `paths` : [String]?
    public var `service` : String?
  }

  public struct Policy : Codable {
    public var `auditConfigs` : [AuditConfig]?
    public var `bindings` : [Binding]?
    public var `etag` : String?
    public var `iamOwned` : Bool?
    public var `rules` : [Rule]?
    public var `version` : Int?
  }

  public struct Project : Codable {
    public var `commonInstanceMetadata` : Metadata?
    public var `creationTimestamp` : String?
    public var `defaultNetworkTier` : String?
    public var `defaultServiceAccount` : String?
    public var `description` : String?
    public var `enabledFeatures` : [String]?
    public var `id` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `quotas` : [Quota]?
    public var `selfLink` : String?
    public var `usageExportLocation` : UsageExportLocation?
    public var `xpnProjectStatus` : String?
  }

  public struct ProjectsDisableXpnResourceRequest : Codable {
    public var `xpnResource` : XpnResourceId?
  }

  public struct ProjectsEnableXpnResourceRequest : Codable {
    public var `xpnResource` : XpnResourceId?
  }

  public struct ProjectsGetXpnResources : Codable {
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `resources` : [XpnResourceId]?
  }

  public struct ProjectsListXpnHostsRequest : Codable {
    public var `organization` : String?
  }

  public struct ProjectsSetDefaultNetworkTierRequest : Codable {
    public var `networkTier` : String?
  }

  public struct Quota : Codable {
    public var `limit` : Float?
    public var `metric` : String?
    public var `owner` : String?
    public var `usage` : Float?
  }

  public struct Reference : Codable {
    public var `kind` : String?
    public var `referenceType` : String?
    public var `referrer` : String?
    public var `target` : String?
  }

  public struct Region : Codable {
    public var `creationTimestamp` : String?
    public var `deprecated` : DeprecationStatus?
    public var `description` : String?
    public var `id` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `quotas` : [Quota]?
    public var `selfLink` : String?
    public var `status` : String?
    public var `zones` : [String]?
  }

  public struct RegionAutoscalerList : Codable {
    public var `id` : String?
    public var `items` : [Autoscaler]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct RegionDiskTypeList : Codable {
    public var `id` : String?
    public var `items` : [DiskType]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct RegionDisksResizeRequest : Codable {
    public var `sizeGb` : String?
  }

  public struct RegionInstanceGroupList : Codable {
    public var `id` : String?
    public var `items` : [InstanceGroup]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct RegionInstanceGroupManagerList : Codable {
    public var `id` : String?
    public var `items` : [InstanceGroupManager]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct RegionInstanceGroupManagersAbandonInstancesRequest : Codable {
    public var `instances` : [String]?
  }

  public struct RegionInstanceGroupManagersDeleteInstancesRequest : Codable {
    public var `instances` : [String]?
  }

  public struct RegionInstanceGroupManagersListInstancesResponse : Codable {
    public var `managedInstances` : [ManagedInstance]?
  }

  public struct RegionInstanceGroupManagersRecreateRequest : Codable {
    public var `instances` : [String]?
  }

  public struct RegionInstanceGroupManagersSetTargetPoolsRequest : Codable {
    public var `fingerprint` : String?
    public var `targetPools` : [String]?
  }

  public struct RegionInstanceGroupManagersSetTemplateRequest : Codable {
    public var `instanceTemplate` : String?
  }

  public struct RegionInstanceGroupsListInstances : Codable {
    public var `id` : String?
    public var `items` : [InstanceWithNamedPorts]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct RegionInstanceGroupsListInstancesRequest : Codable {
    public var `instanceState` : String?
    public var `portName` : String?
  }

  public struct RegionInstanceGroupsSetNamedPortsRequest : Codable {
    public var `fingerprint` : String?
    public var `namedPorts` : [NamedPort]?
  }

  public struct RegionList : Codable {
    public var `id` : String?
    public var `items` : [Region]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct RegionSetLabelsRequest : Codable {
    public var `labelFingerprint` : String?
    public var `labels` : Object?
  }

  public struct RegionSetPolicyRequest : Codable {
    public var `bindings` : [Binding]?
    public var `etag` : String?
    public var `policy` : Policy?
  }

  public struct ResourceCommitment : Codable {
    public var `amount` : String?
    public var `type` : String?
  }

  public struct ResourceGroupReference : Codable {
    public var `group` : String?
  }

  public struct Route : Codable {
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `destRange` : String?
    public var `id` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `network` : String?
    public var `nextHopGateway` : String?
    public var `nextHopInstance` : String?
    public var `nextHopIp` : String?
    public var `nextHopNetwork` : String?
    public var `nextHopPeering` : String?
    public var `nextHopVpnTunnel` : String?
    public var `priority` : Int?
    public var `selfLink` : String?
    public var `tags` : [String]?
    public var `warnings` : [Object]?
  }

  public struct RouteList : Codable {
    public var `id` : String?
    public var `items` : [Route]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct Router : Codable {
    public var `bgp` : RouterBgp?
    public var `bgpPeers` : [RouterBgpPeer]?
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `id` : String?
    public var `interfaces` : [RouterInterface]?
    public var `kind` : String?
    public var `name` : String?
    public var `nats` : [RouterNat]?
    public var `network` : String?
    public var `region` : String?
    public var `selfLink` : String?
  }

  public struct RouterAdvertisedIpRange : Codable {
    public var `description` : String?
    public var `range` : String?
  }

  public struct RouterAggregatedList : Codable {
    public var `id` : String?
    public var `items` : Object?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct RouterBgp : Codable {
    public var `advertiseMode` : String?
    public var `advertisedGroups` : [String]?
    public var `advertisedIpRanges` : [RouterAdvertisedIpRange]?
    public var `asn` : Int?
  }

  public struct RouterBgpPeer : Codable {
    public var `advertiseMode` : String?
    public var `advertisedGroups` : [String]?
    public var `advertisedIpRanges` : [RouterAdvertisedIpRange]?
    public var `advertisedRoutePriority` : Int?
    public var `interfaceName` : String?
    public var `ipAddress` : String?
    public var `managementType` : String?
    public var `name` : String?
    public var `peerAsn` : Int?
    public var `peerIpAddress` : String?
  }

  public struct RouterInterface : Codable {
    public var `ipRange` : String?
    public var `linkedInterconnectAttachment` : String?
    public var `linkedVpnTunnel` : String?
    public var `managementType` : String?
    public var `name` : String?
  }

  public struct RouterList : Codable {
    public var `id` : String?
    public var `items` : [Router]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct RouterNat : Codable {
    public var `icmpIdleTimeoutSec` : Int?
    public var `minPortsPerVm` : Int?
    public var `name` : String?
    public var `natIpAllocateOption` : String?
    public var `natIps` : [String]?
    public var `sourceSubnetworkIpRangesToNat` : String?
    public var `subnetworks` : [RouterNatSubnetworkToNat]?
    public var `tcpEstablishedIdleTimeoutSec` : Int?
    public var `tcpTransitoryIdleTimeoutSec` : Int?
    public var `udpIdleTimeoutSec` : Int?
  }

  public struct RouterNatSubnetworkToNat : Codable {
    public var `name` : String?
    public var `secondaryIpRangeNames` : [String]?
    public var `sourceIpRangesToNat` : [String]?
  }

  public struct RouterStatus : Codable {
    public var `bestRoutes` : [Route]?
    public var `bestRoutesForRouter` : [Route]?
    public var `bgpPeerStatus` : [RouterStatusBgpPeerStatus]?
    public var `natStatus` : [RouterStatusNatStatus]?
    public var `network` : String?
  }

  public struct RouterStatusBgpPeerStatus : Codable {
    public var `advertisedRoutes` : [Route]?
    public var `ipAddress` : String?
    public var `linkedVpnTunnel` : String?
    public var `name` : String?
    public var `numLearnedRoutes` : Int?
    public var `peerIpAddress` : String?
    public var `state` : String?
    public var `status` : String?
    public var `uptime` : String?
    public var `uptimeSeconds` : String?
  }

  public struct RouterStatusNatStatus : Codable {
    public var `autoAllocatedNatIps` : [String]?
    public var `minExtraNatIpsNeeded` : Int?
    public var `name` : String?
    public var `numVmEndpointsWithNatMappings` : Int?
    public var `userAllocatedNatIpResources` : [String]?
    public var `userAllocatedNatIps` : [String]?
  }

  public struct RouterStatusResponse : Codable {
    public var `kind` : String?
    public var `result` : RouterStatus?
  }

  public struct RoutersPreviewResponse : Codable {
    public var `resource` : Router?
  }

  public struct RoutersScopedList : Codable {
    public var `routers` : [Router]?
    public var `warning` : Object?
  }

  public struct Rule : Codable {
    public var `action` : String?
    public var `conditions` : [Condition]?
    public var `description` : String?
    public var `ins` : [String]?
    public var `logConfigs` : [LogConfig]?
    public var `notIns` : [String]?
    public var `permissions` : [String]?
  }

  public struct SSLHealthCheck : Codable {
    public var `port` : Int?
    public var `portName` : String?
    public var `proxyHeader` : String?
    public var `request` : String?
    public var `response` : String?
  }

  public struct Scheduling : Codable {
    public var `automaticRestart` : Bool?
    public var `nodeAffinities` : [SchedulingNodeAffinity]?
    public var `onHostMaintenance` : String?
    public var `preemptible` : Bool?
  }

  public struct SchedulingNodeAffinity : Codable {
    public var `key` : String?
    public var `operator` : String?
    public var `values` : [String]?
  }

  public struct SecurityPolicy : Codable {
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `fingerprint` : String?
    public var `id` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `rules` : [SecurityPolicyRule]?
    public var `selfLink` : String?
  }

  public struct SecurityPolicyList : Codable {
    public var `id` : String?
    public var `items` : [SecurityPolicy]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `warning` : Object?
  }

  public struct SecurityPolicyReference : Codable {
    public var `securityPolicy` : String?
  }

  public struct SecurityPolicyRule : Codable {
    public var `action` : String?
    public var `description` : String?
    public var `kind` : String?
    public var `match` : SecurityPolicyRuleMatcher?
    public var `preview` : Bool?
    public var `priority` : Int?
  }

  public struct SecurityPolicyRuleMatcher : Codable {
    public var `config` : SecurityPolicyRuleMatcherConfig?
    public var `versionedExpr` : String?
  }

  public struct SecurityPolicyRuleMatcherConfig : Codable {
    public var `srcIpRanges` : [String]?
  }

  public struct SerialPortOutput : Codable {
    public var `contents` : String?
    public var `kind` : String?
    public var `next` : String?
    public var `selfLink` : String?
    public var `start` : String?
  }

  public struct ServiceAccount : Codable {
    public var `email` : String?
    public var `scopes` : [String]?
  }

  public struct SignedUrlKey : Codable {
    public var `keyName` : String?
    public var `keyValue` : String?
  }

  public struct Snapshot : Codable {
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `diskSizeGb` : String?
    public var `id` : String?
    public var `kind` : String?
    public var `labelFingerprint` : String?
    public var `labels` : Object?
    public var `licenseCodes` : [String]?
    public var `licenses` : [String]?
    public var `name` : String?
    public var `selfLink` : String?
    public var `snapshotEncryptionKey` : CustomerEncryptionKey?
    public var `sourceDisk` : String?
    public var `sourceDiskEncryptionKey` : CustomerEncryptionKey?
    public var `sourceDiskId` : String?
    public var `status` : String?
    public var `storageBytes` : String?
    public var `storageBytesStatus` : String?
  }

  public struct SnapshotList : Codable {
    public var `id` : String?
    public var `items` : [Snapshot]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct SourceInstanceParams : Codable {
    public var `diskConfigs` : [DiskInstantiationConfig]?
  }

  public struct SslCertificate : Codable {
    public var `certificate` : String?
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `id` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `privateKey` : String?
    public var `selfLink` : String?
  }

  public struct SslCertificateList : Codable {
    public var `id` : String?
    public var `items` : [SslCertificate]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct SslPoliciesList : Codable {
    public var `id` : String?
    public var `items` : [SslPolicy]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct SslPoliciesListAvailableFeaturesResponse : Codable {
    public var `features` : [String]?
  }

  public struct SslPolicy : Codable {
    public var `creationTimestamp` : String?
    public var `customFeatures` : [String]?
    public var `description` : String?
    public var `enabledFeatures` : [String]?
    public var `fingerprint` : String?
    public var `id` : String?
    public var `kind` : String?
    public var `minTlsVersion` : String?
    public var `name` : String?
    public var `profile` : String?
    public var `selfLink` : String?
    public var `warnings` : [Object]?
  }

  public struct SslPolicyReference : Codable {
    public var `sslPolicy` : String?
  }

  public struct Subnetwork : Codable {
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `enableFlowLogs` : Bool?
    public var `fingerprint` : String?
    public var `gatewayAddress` : String?
    public var `id` : String?
    public var `ipCidrRange` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `network` : String?
    public var `privateIpGoogleAccess` : Bool?
    public var `region` : String?
    public var `secondaryIpRanges` : [SubnetworkSecondaryRange]?
    public var `selfLink` : String?
  }

  public struct SubnetworkAggregatedList : Codable {
    public var `id` : String?
    public var `items` : Object?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct SubnetworkList : Codable {
    public var `id` : String?
    public var `items` : [Subnetwork]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct SubnetworkSecondaryRange : Codable {
    public var `ipCidrRange` : String?
    public var `rangeName` : String?
  }

  public struct SubnetworksExpandIpCidrRangeRequest : Codable {
    public var `ipCidrRange` : String?
  }

  public struct SubnetworksScopedList : Codable {
    public var `subnetworks` : [Subnetwork]?
    public var `warning` : Object?
  }

  public struct SubnetworksSetPrivateIpGoogleAccessRequest : Codable {
    public var `privateIpGoogleAccess` : Bool?
  }

  public struct TCPHealthCheck : Codable {
    public var `port` : Int?
    public var `portName` : String?
    public var `proxyHeader` : String?
    public var `request` : String?
    public var `response` : String?
  }

  public struct Tags : Codable {
    public var `fingerprint` : String?
    public var `items` : [String]?
  }

  public struct TargetHttpProxy : Codable {
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `id` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `selfLink` : String?
    public var `urlMap` : String?
  }

  public struct TargetHttpProxyList : Codable {
    public var `id` : String?
    public var `items` : [TargetHttpProxy]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct TargetHttpsProxiesSetQuicOverrideRequest : Codable {
    public var `quicOverride` : String?
  }

  public struct TargetHttpsProxiesSetSslCertificatesRequest : Codable {
    public var `sslCertificates` : [String]?
  }

  public struct TargetHttpsProxy : Codable {
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `id` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `quicOverride` : String?
    public var `selfLink` : String?
    public var `sslCertificates` : [String]?
    public var `sslPolicy` : String?
    public var `urlMap` : String?
  }

  public struct TargetHttpsProxyList : Codable {
    public var `id` : String?
    public var `items` : [TargetHttpsProxy]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct TargetInstance : Codable {
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `id` : String?
    public var `instance` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `natPolicy` : String?
    public var `selfLink` : String?
    public var `zone` : String?
  }

  public struct TargetInstanceAggregatedList : Codable {
    public var `id` : String?
    public var `items` : Object?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct TargetInstanceList : Codable {
    public var `id` : String?
    public var `items` : [TargetInstance]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct TargetInstancesScopedList : Codable {
    public var `targetInstances` : [TargetInstance]?
    public var `warning` : Object?
  }

  public struct TargetPool : Codable {
    public var `backupPool` : String?
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `failoverRatio` : Float?
    public var `healthChecks` : [String]?
    public var `id` : String?
    public var `instances` : [String]?
    public var `kind` : String?
    public var `name` : String?
    public var `region` : String?
    public var `selfLink` : String?
    public var `sessionAffinity` : String?
  }

  public struct TargetPoolAggregatedList : Codable {
    public var `id` : String?
    public var `items` : Object?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct TargetPoolInstanceHealth : Codable {
    public var `healthStatus` : [HealthStatus]?
    public var `kind` : String?
  }

  public struct TargetPoolList : Codable {
    public var `id` : String?
    public var `items` : [TargetPool]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct TargetPoolsAddHealthCheckRequest : Codable {
    public var `healthChecks` : [HealthCheckReference]?
  }

  public struct TargetPoolsAddInstanceRequest : Codable {
    public var `instances` : [InstanceReference]?
  }

  public struct TargetPoolsRemoveHealthCheckRequest : Codable {
    public var `healthChecks` : [HealthCheckReference]?
  }

  public struct TargetPoolsRemoveInstanceRequest : Codable {
    public var `instances` : [InstanceReference]?
  }

  public struct TargetPoolsScopedList : Codable {
    public var `targetPools` : [TargetPool]?
    public var `warning` : Object?
  }

  public struct TargetReference : Codable {
    public var `target` : String?
  }

  public struct TargetSslProxiesSetBackendServiceRequest : Codable {
    public var `service` : String?
  }

  public struct TargetSslProxiesSetProxyHeaderRequest : Codable {
    public var `proxyHeader` : String?
  }

  public struct TargetSslProxiesSetSslCertificatesRequest : Codable {
    public var `sslCertificates` : [String]?
  }

  public struct TargetSslProxy : Codable {
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `id` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `proxyHeader` : String?
    public var `selfLink` : String?
    public var `service` : String?
    public var `sslCertificates` : [String]?
    public var `sslPolicy` : String?
  }

  public struct TargetSslProxyList : Codable {
    public var `id` : String?
    public var `items` : [TargetSslProxy]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct TargetTcpProxiesSetBackendServiceRequest : Codable {
    public var `service` : String?
  }

  public struct TargetTcpProxiesSetProxyHeaderRequest : Codable {
    public var `proxyHeader` : String?
  }

  public struct TargetTcpProxy : Codable {
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `id` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `proxyHeader` : String?
    public var `selfLink` : String?
    public var `service` : String?
  }

  public struct TargetTcpProxyList : Codable {
    public var `id` : String?
    public var `items` : [TargetTcpProxy]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct TargetVpnGateway : Codable {
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `forwardingRules` : [String]?
    public var `id` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `network` : String?
    public var `region` : String?
    public var `selfLink` : String?
    public var `status` : String?
    public var `tunnels` : [String]?
  }

  public struct TargetVpnGatewayAggregatedList : Codable {
    public var `id` : String?
    public var `items` : Object?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct TargetVpnGatewayList : Codable {
    public var `id` : String?
    public var `items` : [TargetVpnGateway]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct TargetVpnGatewaysScopedList : Codable {
    public var `targetVpnGateways` : [TargetVpnGateway]?
    public var `warning` : Object?
  }

  public struct TestFailure : Codable {
    public var `actualService` : String?
    public var `expectedService` : String?
    public var `host` : String?
    public var `path` : String?
  }

  public struct TestPermissionsRequest : Codable {
    public var `permissions` : [String]?
  }

  public struct TestPermissionsResponse : Codable {
    public var `permissions` : [String]?
  }

  public struct UrlMap : Codable {
    public var `creationTimestamp` : String?
    public var `defaultService` : String?
    public var `description` : String?
    public var `fingerprint` : String?
    public var `hostRules` : [HostRule]?
    public var `id` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `pathMatchers` : [PathMatcher]?
    public var `selfLink` : String?
    public var `tests` : [UrlMapTest]?
  }

  public struct UrlMapList : Codable {
    public var `id` : String?
    public var `items` : [UrlMap]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct UrlMapReference : Codable {
    public var `urlMap` : String?
  }

  public struct UrlMapTest : Codable {
    public var `description` : String?
    public var `host` : String?
    public var `path` : String?
    public var `service` : String?
  }

  public struct UrlMapValidationResult : Codable {
    public var `loadErrors` : [String]?
    public var `loadSucceeded` : Bool?
    public var `testFailures` : [TestFailure]?
    public var `testPassed` : Bool?
  }

  public struct UrlMapsValidateRequest : Codable {
    public var `resource` : UrlMap?
  }

  public struct UrlMapsValidateResponse : Codable {
    public var `result` : UrlMapValidationResult?
  }

  public struct UsableSubnetwork : Codable {
    public var `ipCidrRange` : String?
    public var `network` : String?
    public var `secondaryIpRanges` : [UsableSubnetworkSecondaryRange]?
    public var `subnetwork` : String?
  }

  public struct UsableSubnetworkSecondaryRange : Codable {
    public var `ipCidrRange` : String?
    public var `rangeName` : String?
  }

  public struct UsableSubnetworksAggregatedList : Codable {
    public var `id` : String?
    public var `items` : [UsableSubnetwork]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct UsageExportLocation : Codable {
    public var `bucketName` : String?
    public var `reportNamePrefix` : String?
  }

  public struct VmEndpointNatMappings : Codable {
    public var `instanceName` : String?
    public var `interfaceNatMappings` : [VmEndpointNatMappingsInterfaceNatMappings]?
  }

  public struct VmEndpointNatMappingsInterfaceNatMappings : Codable {
    public var `natIpPortRanges` : [String]?
    public var `numTotalNatPorts` : Int?
    public var `sourceAliasIpRange` : String?
    public var `sourceVirtualIp` : String?
  }

  public struct VmEndpointNatMappingsList : Codable {
    public var `id` : String?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `result` : [VmEndpointNatMappings]?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct VpnTunnel : Codable {
    public var `creationTimestamp` : String?
    public var `description` : String?
    public var `detailedStatus` : String?
    public var `id` : String?
    public var `ikeVersion` : Int?
    public var `kind` : String?
    public var `localTrafficSelector` : [String]?
    public var `name` : String?
    public var `peerIp` : String?
    public var `region` : String?
    public var `remoteTrafficSelector` : [String]?
    public var `router` : String?
    public var `selfLink` : String?
    public var `sharedSecret` : String?
    public var `sharedSecretHash` : String?
    public var `status` : String?
    public var `targetVpnGateway` : String?
  }

  public struct VpnTunnelAggregatedList : Codable {
    public var `id` : String?
    public var `items` : Object?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct VpnTunnelList : Codable {
    public var `id` : String?
    public var `items` : [VpnTunnel]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct VpnTunnelsScopedList : Codable {
    public var `vpnTunnels` : [VpnTunnel]?
    public var `warning` : Object?
  }

  public struct XpnHostList : Codable {
    public var `id` : String?
    public var `items` : [Project]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct XpnResourceId : Codable {
    public var `id` : String?
    public var `type` : String?
  }

  public struct Zone : Codable {
    public var `availableCpuPlatforms` : [String]?
    public var `creationTimestamp` : String?
    public var `deprecated` : DeprecationStatus?
    public var `description` : String?
    public var `id` : String?
    public var `kind` : String?
    public var `name` : String?
    public var `region` : String?
    public var `selfLink` : String?
    public var `status` : String?
  }

  public struct ZoneList : Codable {
    public var `id` : String?
    public var `items` : [Zone]?
    public var `kind` : String?
    public var `nextPageToken` : String?
    public var `selfLink` : String?
    public var `warning` : Object?
  }

  public struct ZoneSetLabelsRequest : Codable {
    public var `labelFingerprint` : String?
    public var `labels` : Object?
  }

  public struct ZoneSetPolicyRequest : Codable {
    public var `bindings` : [Binding]?
    public var `etag` : String?
    public var `policy` : Policy?
  }

  public struct AcceleratorTypesAggregatedListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func acceleratorTypes_aggregatedList (
    parameters: AcceleratorTypesAggregatedListParameters,
    completion: @escaping (AcceleratorTypeAggregatedList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/aggregated/acceleratorTypes",
        parameters: parameters,
        completion: completion)
  }

  public struct AcceleratorTypesGetParameters : Parameterizable {
    public var acceleratorType : String?
    public var project : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["acceleratorType","project","zone"]
    }
  }

  public func acceleratorTypes_get (
    parameters: AcceleratorTypesGetParameters,
    completion: @escaping (AcceleratorType?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones/{zone}/acceleratorTypes/{acceleratorType}",
        parameters: parameters,
        completion: completion)
  }

  public struct AcceleratorTypesListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project","zone"]
    }
  }

  public func acceleratorTypes_list (
    parameters: AcceleratorTypesListParameters,
    completion: @escaping (AcceleratorTypeList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones/{zone}/acceleratorTypes",
        parameters: parameters,
        completion: completion)
  }

  public struct AddressesAggregatedListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func addresses_aggregatedList (
    parameters: AddressesAggregatedListParameters,
    completion: @escaping (AddressAggregatedList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/aggregated/addresses",
        parameters: parameters,
        completion: completion)
  }

  public struct AddressesDeleteParameters : Parameterizable {
    public var address : String?
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["address","project","region"]
    }
  }

  public func addresses_delete (
    parameters: AddressesDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/regions/{region}/addresses/{address}",
        parameters: parameters,
        completion: completion)
  }

  public struct AddressesGetParameters : Parameterizable {
    public var address : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["address","project","region"]
    }
  }

  public func addresses_get (
    parameters: AddressesGetParameters,
    completion: @escaping (Address?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/addresses/{address}",
        parameters: parameters,
        completion: completion)
  }

  public struct AddressesInsertParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func addresses_insert (
    request: Address,
    parameters: AddressesInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/addresses",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct AddressesListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func addresses_list (
    parameters: AddressesListParameters,
    completion: @escaping (AddressList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/addresses",
        parameters: parameters,
        completion: completion)
  }

  public struct AutoscalersAggregatedListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func autoscalers_aggregatedList (
    parameters: AutoscalersAggregatedListParameters,
    completion: @escaping (AutoscalerAggregatedList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/aggregated/autoscalers",
        parameters: parameters,
        completion: completion)
  }

  public struct AutoscalersDeleteParameters : Parameterizable {
    public var autoscaler : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["autoscaler","project","zone"]
    }
  }

  public func autoscalers_delete (
    parameters: AutoscalersDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/zones/{zone}/autoscalers/{autoscaler}",
        parameters: parameters,
        completion: completion)
  }

  public struct AutoscalersGetParameters : Parameterizable {
    public var autoscaler : String?
    public var project : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["autoscaler","project","zone"]
    }
  }

  public func autoscalers_get (
    parameters: AutoscalersGetParameters,
    completion: @escaping (Autoscaler?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones/{zone}/autoscalers/{autoscaler}",
        parameters: parameters,
        completion: completion)
  }

  public struct AutoscalersInsertParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","zone"]
    }
  }

  public func autoscalers_insert (
    request: Autoscaler,
    parameters: AutoscalersInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/autoscalers",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct AutoscalersListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project","zone"]
    }
  }

  public func autoscalers_list (
    parameters: AutoscalersListParameters,
    completion: @escaping (AutoscalerList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones/{zone}/autoscalers",
        parameters: parameters,
        completion: completion)
  }

  public struct AutoscalersPatchParameters : Parameterizable {
    public var autoscaler : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["autoscaler","requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","zone"]
    }
  }

  public func autoscalers_patch (
    request: Autoscaler,
    parameters: AutoscalersPatchParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PATCH",
        path: "{project}/zones/{zone}/autoscalers",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct AutoscalersUpdateParameters : Parameterizable {
    public var autoscaler : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["autoscaler","requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","zone"]
    }
  }

  public func autoscalers_update (
    request: Autoscaler,
    parameters: AutoscalersUpdateParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PUT",
        path: "{project}/zones/{zone}/autoscalers",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct BackendBucketsAddSignedUrlKeyParameters : Parameterizable {
    public var backendBucket : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["backendBucket","project"]
    }
  }

  public func backendBuckets_addSignedUrlKey (
    request: SignedUrlKey,
    parameters: BackendBucketsAddSignedUrlKeyParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/backendBuckets/{backendBucket}/addSignedUrlKey",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct BackendBucketsDeleteParameters : Parameterizable {
    public var backendBucket : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["backendBucket","project"]
    }
  }

  public func backendBuckets_delete (
    parameters: BackendBucketsDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/global/backendBuckets/{backendBucket}",
        parameters: parameters,
        completion: completion)
  }

  public struct BackendBucketsDeleteSignedUrlKeyParameters : Parameterizable {
    public var backendBucket : String?
    public var keyName : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["keyName","requestId"]
    }
    public func pathParameters() -> [String] {
      return ["backendBucket","project"]
    }
  }

  public func backendBuckets_deleteSignedUrlKey (
    parameters: BackendBucketsDeleteSignedUrlKeyParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/backendBuckets/{backendBucket}/deleteSignedUrlKey",
        parameters: parameters,
        completion: completion)
  }

  public struct BackendBucketsGetParameters : Parameterizable {
    public var backendBucket : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["backendBucket","project"]
    }
  }

  public func backendBuckets_get (
    parameters: BackendBucketsGetParameters,
    completion: @escaping (BackendBucket?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/backendBuckets/{backendBucket}",
        parameters: parameters,
        completion: completion)
  }

  public struct BackendBucketsInsertParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func backendBuckets_insert (
    request: BackendBucket,
    parameters: BackendBucketsInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/backendBuckets",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct BackendBucketsListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func backendBuckets_list (
    parameters: BackendBucketsListParameters,
    completion: @escaping (BackendBucketList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/backendBuckets",
        parameters: parameters,
        completion: completion)
  }

  public struct BackendBucketsPatchParameters : Parameterizable {
    public var backendBucket : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["backendBucket","project"]
    }
  }

  public func backendBuckets_patch (
    request: BackendBucket,
    parameters: BackendBucketsPatchParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PATCH",
        path: "{project}/global/backendBuckets/{backendBucket}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct BackendBucketsUpdateParameters : Parameterizable {
    public var backendBucket : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["backendBucket","project"]
    }
  }

  public func backendBuckets_update (
    request: BackendBucket,
    parameters: BackendBucketsUpdateParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PUT",
        path: "{project}/global/backendBuckets/{backendBucket}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct BackendServicesAddSignedUrlKeyParameters : Parameterizable {
    public var backendService : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["backendService","project"]
    }
  }

  public func backendServices_addSignedUrlKey (
    request: SignedUrlKey,
    parameters: BackendServicesAddSignedUrlKeyParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/backendServices/{backendService}/addSignedUrlKey",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct BackendServicesAggregatedListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func backendServices_aggregatedList (
    parameters: BackendServicesAggregatedListParameters,
    completion: @escaping (BackendServiceAggregatedList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/aggregated/backendServices",
        parameters: parameters,
        completion: completion)
  }

  public struct BackendServicesDeleteParameters : Parameterizable {
    public var backendService : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["backendService","project"]
    }
  }

  public func backendServices_delete (
    parameters: BackendServicesDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/global/backendServices/{backendService}",
        parameters: parameters,
        completion: completion)
  }

  public struct BackendServicesDeleteSignedUrlKeyParameters : Parameterizable {
    public var backendService : String?
    public var keyName : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["keyName","requestId"]
    }
    public func pathParameters() -> [String] {
      return ["backendService","project"]
    }
  }

  public func backendServices_deleteSignedUrlKey (
    parameters: BackendServicesDeleteSignedUrlKeyParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/backendServices/{backendService}/deleteSignedUrlKey",
        parameters: parameters,
        completion: completion)
  }

  public struct BackendServicesGetParameters : Parameterizable {
    public var backendService : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["backendService","project"]
    }
  }

  public func backendServices_get (
    parameters: BackendServicesGetParameters,
    completion: @escaping (BackendService?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/backendServices/{backendService}",
        parameters: parameters,
        completion: completion)
  }

  public struct BackendServicesGetHealthParameters : Parameterizable {
    public var backendService : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["backendService","project"]
    }
  }

  public func backendServices_getHealth (
    request: ResourceGroupReference,
    parameters: BackendServicesGetHealthParameters,
    completion: @escaping (BackendServiceGroupHealth?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/backendServices/{backendService}/getHealth",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct BackendServicesInsertParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func backendServices_insert (
    request: BackendService,
    parameters: BackendServicesInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/backendServices",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct BackendServicesListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func backendServices_list (
    parameters: BackendServicesListParameters,
    completion: @escaping (BackendServiceList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/backendServices",
        parameters: parameters,
        completion: completion)
  }

  public struct BackendServicesPatchParameters : Parameterizable {
    public var backendService : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["backendService","project"]
    }
  }

  public func backendServices_patch (
    request: BackendService,
    parameters: BackendServicesPatchParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PATCH",
        path: "{project}/global/backendServices/{backendService}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct BackendServicesSetSecurityPolicyParameters : Parameterizable {
    public var backendService : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["backendService","project"]
    }
  }

  public func backendServices_setSecurityPolicy (
    request: SecurityPolicyReference,
    parameters: BackendServicesSetSecurityPolicyParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/backendServices/{backendService}/setSecurityPolicy",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct BackendServicesUpdateParameters : Parameterizable {
    public var backendService : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["backendService","project"]
    }
  }

  public func backendServices_update (
    request: BackendService,
    parameters: BackendServicesUpdateParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PUT",
        path: "{project}/global/backendServices/{backendService}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct DiskTypesAggregatedListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func diskTypes_aggregatedList (
    parameters: DiskTypesAggregatedListParameters,
    completion: @escaping (DiskTypeAggregatedList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/aggregated/diskTypes",
        parameters: parameters,
        completion: completion)
  }

  public struct DiskTypesGetParameters : Parameterizable {
    public var diskType : String?
    public var project : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["diskType","project","zone"]
    }
  }

  public func diskTypes_get (
    parameters: DiskTypesGetParameters,
    completion: @escaping (DiskType?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones/{zone}/diskTypes/{diskType}",
        parameters: parameters,
        completion: completion)
  }

  public struct DiskTypesListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project","zone"]
    }
  }

  public func diskTypes_list (
    parameters: DiskTypesListParameters,
    completion: @escaping (DiskTypeList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones/{zone}/diskTypes",
        parameters: parameters,
        completion: completion)
  }

  public struct DisksAggregatedListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func disks_aggregatedList (
    parameters: DisksAggregatedListParameters,
    completion: @escaping (DiskAggregatedList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/aggregated/disks",
        parameters: parameters,
        completion: completion)
  }

  public struct DisksCreateSnapshotParameters : Parameterizable {
    public var disk : String?
    public var guestFlush : Bool?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["guestFlush","requestId"]
    }
    public func pathParameters() -> [String] {
      return ["disk","project","zone"]
    }
  }

  public func disks_createSnapshot (
    request: Snapshot,
    parameters: DisksCreateSnapshotParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/disks/{disk}/createSnapshot",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct DisksDeleteParameters : Parameterizable {
    public var disk : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["disk","project","zone"]
    }
  }

  public func disks_delete (
    parameters: DisksDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/zones/{zone}/disks/{disk}",
        parameters: parameters,
        completion: completion)
  }

  public struct DisksGetParameters : Parameterizable {
    public var disk : String?
    public var project : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["disk","project","zone"]
    }
  }

  public func disks_get (
    parameters: DisksGetParameters,
    completion: @escaping (Disk?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones/{zone}/disks/{disk}",
        parameters: parameters,
        completion: completion)
  }

  public struct DisksGetIamPolicyParameters : Parameterizable {
    public var project : String?
    public var resource : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","resource","zone"]
    }
  }

  public func disks_getIamPolicy (
    parameters: DisksGetIamPolicyParameters,
    completion: @escaping (Policy?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones/{zone}/disks/{resource}/getIamPolicy",
        parameters: parameters,
        completion: completion)
  }

  public struct DisksInsertParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var sourceImage : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId","sourceImage"]
    }
    public func pathParameters() -> [String] {
      return ["project","zone"]
    }
  }

  public func disks_insert (
    request: Disk,
    parameters: DisksInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/disks",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct DisksListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project","zone"]
    }
  }

  public func disks_list (
    parameters: DisksListParameters,
    completion: @escaping (DiskList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones/{zone}/disks",
        parameters: parameters,
        completion: completion)
  }

  public struct DisksResizeParameters : Parameterizable {
    public var disk : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["disk","project","zone"]
    }
  }

  public func disks_resize (
    request: DisksResizeRequest,
    parameters: DisksResizeParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/disks/{disk}/resize",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct DisksSetIamPolicyParameters : Parameterizable {
    public var project : String?
    public var resource : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","resource","zone"]
    }
  }

  public func disks_setIamPolicy (
    request: ZoneSetPolicyRequest,
    parameters: DisksSetIamPolicyParameters,
    completion: @escaping (Policy?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/disks/{resource}/setIamPolicy",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct DisksSetLabelsParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var resource : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","resource","zone"]
    }
  }

  public func disks_setLabels (
    request: ZoneSetLabelsRequest,
    parameters: DisksSetLabelsParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/disks/{resource}/setLabels",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct DisksTestIamPermissionsParameters : Parameterizable {
    public var project : String?
    public var resource : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","resource","zone"]
    }
  }

  public func disks_testIamPermissions (
    request: TestPermissionsRequest,
    parameters: DisksTestIamPermissionsParameters,
    completion: @escaping (TestPermissionsResponse?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/disks/{resource}/testIamPermissions",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct FirewallsDeleteParameters : Parameterizable {
    public var firewall : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["firewall","project"]
    }
  }

  public func firewalls_delete (
    parameters: FirewallsDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/global/firewalls/{firewall}",
        parameters: parameters,
        completion: completion)
  }

  public struct FirewallsGetParameters : Parameterizable {
    public var firewall : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["firewall","project"]
    }
  }

  public func firewalls_get (
    parameters: FirewallsGetParameters,
    completion: @escaping (Firewall?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/firewalls/{firewall}",
        parameters: parameters,
        completion: completion)
  }

  public struct FirewallsInsertParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func firewalls_insert (
    request: Firewall,
    parameters: FirewallsInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/firewalls",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct FirewallsListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func firewalls_list (
    parameters: FirewallsListParameters,
    completion: @escaping (FirewallList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/firewalls",
        parameters: parameters,
        completion: completion)
  }

  public struct FirewallsPatchParameters : Parameterizable {
    public var firewall : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["firewall","project"]
    }
  }

  public func firewalls_patch (
    request: Firewall,
    parameters: FirewallsPatchParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PATCH",
        path: "{project}/global/firewalls/{firewall}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct FirewallsUpdateParameters : Parameterizable {
    public var firewall : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["firewall","project"]
    }
  }

  public func firewalls_update (
    request: Firewall,
    parameters: FirewallsUpdateParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PUT",
        path: "{project}/global/firewalls/{firewall}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct ForwardingRulesAggregatedListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func forwardingRules_aggregatedList (
    parameters: ForwardingRulesAggregatedListParameters,
    completion: @escaping (ForwardingRuleAggregatedList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/aggregated/forwardingRules",
        parameters: parameters,
        completion: completion)
  }

  public struct ForwardingRulesDeleteParameters : Parameterizable {
    public var forwardingRule : String?
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["forwardingRule","project","region"]
    }
  }

  public func forwardingRules_delete (
    parameters: ForwardingRulesDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/regions/{region}/forwardingRules/{forwardingRule}",
        parameters: parameters,
        completion: completion)
  }

  public struct ForwardingRulesGetParameters : Parameterizable {
    public var forwardingRule : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["forwardingRule","project","region"]
    }
  }

  public func forwardingRules_get (
    parameters: ForwardingRulesGetParameters,
    completion: @escaping (ForwardingRule?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/forwardingRules/{forwardingRule}",
        parameters: parameters,
        completion: completion)
  }

  public struct ForwardingRulesInsertParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func forwardingRules_insert (
    request: ForwardingRule,
    parameters: ForwardingRulesInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/forwardingRules",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct ForwardingRulesListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func forwardingRules_list (
    parameters: ForwardingRulesListParameters,
    completion: @escaping (ForwardingRuleList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/forwardingRules",
        parameters: parameters,
        completion: completion)
  }

  public struct ForwardingRulesSetTargetParameters : Parameterizable {
    public var forwardingRule : String?
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["forwardingRule","project","region"]
    }
  }

  public func forwardingRules_setTarget (
    request: TargetReference,
    parameters: ForwardingRulesSetTargetParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/forwardingRules/{forwardingRule}/setTarget",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct GlobalAddressesDeleteParameters : Parameterizable {
    public var address : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["address","project"]
    }
  }

  public func globalAddresses_delete (
    parameters: GlobalAddressesDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/global/addresses/{address}",
        parameters: parameters,
        completion: completion)
  }

  public struct GlobalAddressesGetParameters : Parameterizable {
    public var address : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["address","project"]
    }
  }

  public func globalAddresses_get (
    parameters: GlobalAddressesGetParameters,
    completion: @escaping (Address?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/addresses/{address}",
        parameters: parameters,
        completion: completion)
  }

  public struct GlobalAddressesInsertParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func globalAddresses_insert (
    request: Address,
    parameters: GlobalAddressesInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/addresses",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct GlobalAddressesListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func globalAddresses_list (
    parameters: GlobalAddressesListParameters,
    completion: @escaping (AddressList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/addresses",
        parameters: parameters,
        completion: completion)
  }

  public struct GlobalForwardingRulesDeleteParameters : Parameterizable {
    public var forwardingRule : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["forwardingRule","project"]
    }
  }

  public func globalForwardingRules_delete (
    parameters: GlobalForwardingRulesDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/global/forwardingRules/{forwardingRule}",
        parameters: parameters,
        completion: completion)
  }

  public struct GlobalForwardingRulesGetParameters : Parameterizable {
    public var forwardingRule : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["forwardingRule","project"]
    }
  }

  public func globalForwardingRules_get (
    parameters: GlobalForwardingRulesGetParameters,
    completion: @escaping (ForwardingRule?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/forwardingRules/{forwardingRule}",
        parameters: parameters,
        completion: completion)
  }

  public struct GlobalForwardingRulesInsertParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func globalForwardingRules_insert (
    request: ForwardingRule,
    parameters: GlobalForwardingRulesInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/forwardingRules",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct GlobalForwardingRulesListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func globalForwardingRules_list (
    parameters: GlobalForwardingRulesListParameters,
    completion: @escaping (ForwardingRuleList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/forwardingRules",
        parameters: parameters,
        completion: completion)
  }

  public struct GlobalForwardingRulesSetTargetParameters : Parameterizable {
    public var forwardingRule : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["forwardingRule","project"]
    }
  }

  public func globalForwardingRules_setTarget (
    request: TargetReference,
    parameters: GlobalForwardingRulesSetTargetParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/forwardingRules/{forwardingRule}/setTarget",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct GlobalOperationsAggregatedListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func globalOperations_aggregatedList (
    parameters: GlobalOperationsAggregatedListParameters,
    completion: @escaping (OperationAggregatedList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/aggregated/operations",
        parameters: parameters,
        completion: completion)
  }

  public struct GlobalOperationsDeleteParameters : Parameterizable {
    public var operation : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["operation","project"]
    }
  }

  public func globalOperations_delete (
    parameters: GlobalOperationsDeleteParameters,
    completion: @escaping (Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/global/operations/{operation}",
        parameters: parameters,
        completion: completion)
  }

  public struct GlobalOperationsGetParameters : Parameterizable {
    public var operation : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["operation","project"]
    }
  }

  public func globalOperations_get (
    parameters: GlobalOperationsGetParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/operations/{operation}",
        parameters: parameters,
        completion: completion)
  }

  public struct GlobalOperationsListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func globalOperations_list (
    parameters: GlobalOperationsListParameters,
    completion: @escaping (OperationList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/operations",
        parameters: parameters,
        completion: completion)
  }

  public struct HealthChecksDeleteParameters : Parameterizable {
    public var healthCheck : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["healthCheck","project"]
    }
  }

  public func healthChecks_delete (
    parameters: HealthChecksDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/global/healthChecks/{healthCheck}",
        parameters: parameters,
        completion: completion)
  }

  public struct HealthChecksGetParameters : Parameterizable {
    public var healthCheck : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["healthCheck","project"]
    }
  }

  public func healthChecks_get (
    parameters: HealthChecksGetParameters,
    completion: @escaping (HealthCheck?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/healthChecks/{healthCheck}",
        parameters: parameters,
        completion: completion)
  }

  public struct HealthChecksInsertParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func healthChecks_insert (
    request: HealthCheck,
    parameters: HealthChecksInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/healthChecks",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct HealthChecksListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func healthChecks_list (
    parameters: HealthChecksListParameters,
    completion: @escaping (HealthCheckList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/healthChecks",
        parameters: parameters,
        completion: completion)
  }

  public struct HealthChecksPatchParameters : Parameterizable {
    public var healthCheck : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["healthCheck","project"]
    }
  }

  public func healthChecks_patch (
    request: HealthCheck,
    parameters: HealthChecksPatchParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PATCH",
        path: "{project}/global/healthChecks/{healthCheck}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct HealthChecksUpdateParameters : Parameterizable {
    public var healthCheck : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["healthCheck","project"]
    }
  }

  public func healthChecks_update (
    request: HealthCheck,
    parameters: HealthChecksUpdateParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PUT",
        path: "{project}/global/healthChecks/{healthCheck}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct HttpHealthChecksDeleteParameters : Parameterizable {
    public var httpHealthCheck : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["httpHealthCheck","project"]
    }
  }

  public func httpHealthChecks_delete (
    parameters: HttpHealthChecksDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/global/httpHealthChecks/{httpHealthCheck}",
        parameters: parameters,
        completion: completion)
  }

  public struct HttpHealthChecksGetParameters : Parameterizable {
    public var httpHealthCheck : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["httpHealthCheck","project"]
    }
  }

  public func httpHealthChecks_get (
    parameters: HttpHealthChecksGetParameters,
    completion: @escaping (HttpHealthCheck?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/httpHealthChecks/{httpHealthCheck}",
        parameters: parameters,
        completion: completion)
  }

  public struct HttpHealthChecksInsertParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func httpHealthChecks_insert (
    request: HttpHealthCheck,
    parameters: HttpHealthChecksInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/httpHealthChecks",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct HttpHealthChecksListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func httpHealthChecks_list (
    parameters: HttpHealthChecksListParameters,
    completion: @escaping (HttpHealthCheckList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/httpHealthChecks",
        parameters: parameters,
        completion: completion)
  }

  public struct HttpHealthChecksPatchParameters : Parameterizable {
    public var httpHealthCheck : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["httpHealthCheck","project"]
    }
  }

  public func httpHealthChecks_patch (
    request: HttpHealthCheck,
    parameters: HttpHealthChecksPatchParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PATCH",
        path: "{project}/global/httpHealthChecks/{httpHealthCheck}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct HttpHealthChecksUpdateParameters : Parameterizable {
    public var httpHealthCheck : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["httpHealthCheck","project"]
    }
  }

  public func httpHealthChecks_update (
    request: HttpHealthCheck,
    parameters: HttpHealthChecksUpdateParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PUT",
        path: "{project}/global/httpHealthChecks/{httpHealthCheck}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct HttpsHealthChecksDeleteParameters : Parameterizable {
    public var httpsHealthCheck : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["httpsHealthCheck","project"]
    }
  }

  public func httpsHealthChecks_delete (
    parameters: HttpsHealthChecksDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/global/httpsHealthChecks/{httpsHealthCheck}",
        parameters: parameters,
        completion: completion)
  }

  public struct HttpsHealthChecksGetParameters : Parameterizable {
    public var httpsHealthCheck : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["httpsHealthCheck","project"]
    }
  }

  public func httpsHealthChecks_get (
    parameters: HttpsHealthChecksGetParameters,
    completion: @escaping (HttpsHealthCheck?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/httpsHealthChecks/{httpsHealthCheck}",
        parameters: parameters,
        completion: completion)
  }

  public struct HttpsHealthChecksInsertParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func httpsHealthChecks_insert (
    request: HttpsHealthCheck,
    parameters: HttpsHealthChecksInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/httpsHealthChecks",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct HttpsHealthChecksListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func httpsHealthChecks_list (
    parameters: HttpsHealthChecksListParameters,
    completion: @escaping (HttpsHealthCheckList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/httpsHealthChecks",
        parameters: parameters,
        completion: completion)
  }

  public struct HttpsHealthChecksPatchParameters : Parameterizable {
    public var httpsHealthCheck : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["httpsHealthCheck","project"]
    }
  }

  public func httpsHealthChecks_patch (
    request: HttpsHealthCheck,
    parameters: HttpsHealthChecksPatchParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PATCH",
        path: "{project}/global/httpsHealthChecks/{httpsHealthCheck}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct HttpsHealthChecksUpdateParameters : Parameterizable {
    public var httpsHealthCheck : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["httpsHealthCheck","project"]
    }
  }

  public func httpsHealthChecks_update (
    request: HttpsHealthCheck,
    parameters: HttpsHealthChecksUpdateParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PUT",
        path: "{project}/global/httpsHealthChecks/{httpsHealthCheck}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct ImagesDeleteParameters : Parameterizable {
    public var image : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["image","project"]
    }
  }

  public func images_delete (
    parameters: ImagesDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/global/images/{image}",
        parameters: parameters,
        completion: completion)
  }

  public struct ImagesDeprecateParameters : Parameterizable {
    public var image : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["image","project"]
    }
  }

  public func images_deprecate (
    request: DeprecationStatus,
    parameters: ImagesDeprecateParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/images/{image}/deprecate",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct ImagesGetParameters : Parameterizable {
    public var image : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["image","project"]
    }
  }

  public func images_get (
    parameters: ImagesGetParameters,
    completion: @escaping (Image?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/images/{image}",
        parameters: parameters,
        completion: completion)
  }

  public struct ImagesGetFromFamilyParameters : Parameterizable {
    public var family : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["family","project"]
    }
  }

  public func images_getFromFamily (
    parameters: ImagesGetFromFamilyParameters,
    completion: @escaping (Image?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/images/family/{family}",
        parameters: parameters,
        completion: completion)
  }

  public struct ImagesGetIamPolicyParameters : Parameterizable {
    public var project : String?
    public var resource : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","resource"]
    }
  }

  public func images_getIamPolicy (
    parameters: ImagesGetIamPolicyParameters,
    completion: @escaping (Policy?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/images/{resource}/getIamPolicy",
        parameters: parameters,
        completion: completion)
  }

  public struct ImagesInsertParameters : Parameterizable {
    public var forceCreate : Bool?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["forceCreate","requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func images_insert (
    request: Image,
    parameters: ImagesInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/images",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct ImagesListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func images_list (
    parameters: ImagesListParameters,
    completion: @escaping (ImageList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/images",
        parameters: parameters,
        completion: completion)
  }

  public struct ImagesSetIamPolicyParameters : Parameterizable {
    public var project : String?
    public var resource : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","resource"]
    }
  }

  public func images_setIamPolicy (
    request: GlobalSetPolicyRequest,
    parameters: ImagesSetIamPolicyParameters,
    completion: @escaping (Policy?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/images/{resource}/setIamPolicy",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct ImagesSetLabelsParameters : Parameterizable {
    public var project : String?
    public var resource : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","resource"]
    }
  }

  public func images_setLabels (
    request: GlobalSetLabelsRequest,
    parameters: ImagesSetLabelsParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/images/{resource}/setLabels",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct ImagesTestIamPermissionsParameters : Parameterizable {
    public var project : String?
    public var resource : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","resource"]
    }
  }

  public func images_testIamPermissions (
    request: TestPermissionsRequest,
    parameters: ImagesTestIamPermissionsParameters,
    completion: @escaping (TestPermissionsResponse?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/images/{resource}/testIamPermissions",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstanceGroupManagersAbandonInstancesParameters : Parameterizable {
    public var instanceGroupManager : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instanceGroupManager","project","zone"]
    }
  }

  public func instanceGroupManagers_abandonInstances (
    request: InstanceGroupManagersAbandonInstancesRequest,
    parameters: InstanceGroupManagersAbandonInstancesParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/abandonInstances",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstanceGroupManagersAggregatedListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func instanceGroupManagers_aggregatedList (
    parameters: InstanceGroupManagersAggregatedListParameters,
    completion: @escaping (InstanceGroupManagerAggregatedList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/aggregated/instanceGroupManagers",
        parameters: parameters,
        completion: completion)
  }

  public struct InstanceGroupManagersDeleteParameters : Parameterizable {
    public var instanceGroupManager : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instanceGroupManager","project","zone"]
    }
  }

  public func instanceGroupManagers_delete (
    parameters: InstanceGroupManagersDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}",
        parameters: parameters,
        completion: completion)
  }

  public struct InstanceGroupManagersDeleteInstancesParameters : Parameterizable {
    public var instanceGroupManager : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instanceGroupManager","project","zone"]
    }
  }

  public func instanceGroupManagers_deleteInstances (
    request: InstanceGroupManagersDeleteInstancesRequest,
    parameters: InstanceGroupManagersDeleteInstancesParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/deleteInstances",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstanceGroupManagersGetParameters : Parameterizable {
    public var instanceGroupManager : String?
    public var project : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["instanceGroupManager","project","zone"]
    }
  }

  public func instanceGroupManagers_get (
    parameters: InstanceGroupManagersGetParameters,
    completion: @escaping (InstanceGroupManager?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}",
        parameters: parameters,
        completion: completion)
  }

  public struct InstanceGroupManagersInsertParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","zone"]
    }
  }

  public func instanceGroupManagers_insert (
    request: InstanceGroupManager,
    parameters: InstanceGroupManagersInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instanceGroupManagers",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstanceGroupManagersListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project","zone"]
    }
  }

  public func instanceGroupManagers_list (
    parameters: InstanceGroupManagersListParameters,
    completion: @escaping (InstanceGroupManagerList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones/{zone}/instanceGroupManagers",
        parameters: parameters,
        completion: completion)
  }

  public struct InstanceGroupManagersListManagedInstancesParameters : Parameterizable {
    public var filter : String?
    public var instanceGroupManager : String?
    public var maxResults : Int?
    public var order_by : String?
    public var pageToken : String?
    public var project : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","order_by","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["instanceGroupManager","project","zone"]
    }
  }

  public func instanceGroupManagers_listManagedInstances (
    parameters: InstanceGroupManagersListManagedInstancesParameters,
    completion: @escaping (InstanceGroupManagersListManagedInstancesResponse?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/listManagedInstances",
        parameters: parameters,
        completion: completion)
  }

  public struct InstanceGroupManagersPatchParameters : Parameterizable {
    public var instanceGroupManager : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instanceGroupManager","project","zone"]
    }
  }

  public func instanceGroupManagers_patch (
    request: InstanceGroupManager,
    parameters: InstanceGroupManagersPatchParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PATCH",
        path: "{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstanceGroupManagersRecreateInstancesParameters : Parameterizable {
    public var instanceGroupManager : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instanceGroupManager","project","zone"]
    }
  }

  public func instanceGroupManagers_recreateInstances (
    request: InstanceGroupManagersRecreateInstancesRequest,
    parameters: InstanceGroupManagersRecreateInstancesParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/recreateInstances",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstanceGroupManagersResizeParameters : Parameterizable {
    public var instanceGroupManager : String?
    public var project : String?
    public var requestId : String?
    public var size : Int?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId","size"]
    }
    public func pathParameters() -> [String] {
      return ["instanceGroupManager","project","zone"]
    }
  }

  public func instanceGroupManagers_resize (
    parameters: InstanceGroupManagersResizeParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/resize",
        parameters: parameters,
        completion: completion)
  }

  public struct InstanceGroupManagersSetInstanceTemplateParameters : Parameterizable {
    public var instanceGroupManager : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instanceGroupManager","project","zone"]
    }
  }

  public func instanceGroupManagers_setInstanceTemplate (
    request: InstanceGroupManagersSetInstanceTemplateRequest,
    parameters: InstanceGroupManagersSetInstanceTemplateParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/setInstanceTemplate",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstanceGroupManagersSetTargetPoolsParameters : Parameterizable {
    public var instanceGroupManager : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instanceGroupManager","project","zone"]
    }
  }

  public func instanceGroupManagers_setTargetPools (
    request: InstanceGroupManagersSetTargetPoolsRequest,
    parameters: InstanceGroupManagersSetTargetPoolsParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instanceGroupManagers/{instanceGroupManager}/setTargetPools",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstanceGroupsAddInstancesParameters : Parameterizable {
    public var instanceGroup : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instanceGroup","project","zone"]
    }
  }

  public func instanceGroups_addInstances (
    request: InstanceGroupsAddInstancesRequest,
    parameters: InstanceGroupsAddInstancesParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instanceGroups/{instanceGroup}/addInstances",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstanceGroupsAggregatedListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func instanceGroups_aggregatedList (
    parameters: InstanceGroupsAggregatedListParameters,
    completion: @escaping (InstanceGroupAggregatedList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/aggregated/instanceGroups",
        parameters: parameters,
        completion: completion)
  }

  public struct InstanceGroupsDeleteParameters : Parameterizable {
    public var instanceGroup : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instanceGroup","project","zone"]
    }
  }

  public func instanceGroups_delete (
    parameters: InstanceGroupsDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/zones/{zone}/instanceGroups/{instanceGroup}",
        parameters: parameters,
        completion: completion)
  }

  public struct InstanceGroupsGetParameters : Parameterizable {
    public var instanceGroup : String?
    public var project : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["instanceGroup","project","zone"]
    }
  }

  public func instanceGroups_get (
    parameters: InstanceGroupsGetParameters,
    completion: @escaping (InstanceGroup?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones/{zone}/instanceGroups/{instanceGroup}",
        parameters: parameters,
        completion: completion)
  }

  public struct InstanceGroupsInsertParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","zone"]
    }
  }

  public func instanceGroups_insert (
    request: InstanceGroup,
    parameters: InstanceGroupsInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instanceGroups",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstanceGroupsListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project","zone"]
    }
  }

  public func instanceGroups_list (
    parameters: InstanceGroupsListParameters,
    completion: @escaping (InstanceGroupList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones/{zone}/instanceGroups",
        parameters: parameters,
        completion: completion)
  }

  public struct InstanceGroupsListInstancesParameters : Parameterizable {
    public var filter : String?
    public var instanceGroup : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["instanceGroup","project","zone"]
    }
  }

  public func instanceGroups_listInstances (
    request: InstanceGroupsListInstancesRequest,
    parameters: InstanceGroupsListInstancesParameters,
    completion: @escaping (InstanceGroupsListInstances?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instanceGroups/{instanceGroup}/listInstances",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstanceGroupsRemoveInstancesParameters : Parameterizable {
    public var instanceGroup : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instanceGroup","project","zone"]
    }
  }

  public func instanceGroups_removeInstances (
    request: InstanceGroupsRemoveInstancesRequest,
    parameters: InstanceGroupsRemoveInstancesParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instanceGroups/{instanceGroup}/removeInstances",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstanceGroupsSetNamedPortsParameters : Parameterizable {
    public var instanceGroup : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instanceGroup","project","zone"]
    }
  }

  public func instanceGroups_setNamedPorts (
    request: InstanceGroupsSetNamedPortsRequest,
    parameters: InstanceGroupsSetNamedPortsParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instanceGroups/{instanceGroup}/setNamedPorts",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstanceTemplatesDeleteParameters : Parameterizable {
    public var instanceTemplate : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instanceTemplate","project"]
    }
  }

  public func instanceTemplates_delete (
    parameters: InstanceTemplatesDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/global/instanceTemplates/{instanceTemplate}",
        parameters: parameters,
        completion: completion)
  }

  public struct InstanceTemplatesGetParameters : Parameterizable {
    public var instanceTemplate : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["instanceTemplate","project"]
    }
  }

  public func instanceTemplates_get (
    parameters: InstanceTemplatesGetParameters,
    completion: @escaping (InstanceTemplate?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/instanceTemplates/{instanceTemplate}",
        parameters: parameters,
        completion: completion)
  }

  public struct InstanceTemplatesGetIamPolicyParameters : Parameterizable {
    public var project : String?
    public var resource : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","resource"]
    }
  }

  public func instanceTemplates_getIamPolicy (
    parameters: InstanceTemplatesGetIamPolicyParameters,
    completion: @escaping (Policy?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/instanceTemplates/{resource}/getIamPolicy",
        parameters: parameters,
        completion: completion)
  }

  public struct InstanceTemplatesInsertParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func instanceTemplates_insert (
    request: InstanceTemplate,
    parameters: InstanceTemplatesInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/instanceTemplates",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstanceTemplatesListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func instanceTemplates_list (
    parameters: InstanceTemplatesListParameters,
    completion: @escaping (InstanceTemplateList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/instanceTemplates",
        parameters: parameters,
        completion: completion)
  }

  public struct InstanceTemplatesSetIamPolicyParameters : Parameterizable {
    public var project : String?
    public var resource : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","resource"]
    }
  }

  public func instanceTemplates_setIamPolicy (
    request: GlobalSetPolicyRequest,
    parameters: InstanceTemplatesSetIamPolicyParameters,
    completion: @escaping (Policy?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/instanceTemplates/{resource}/setIamPolicy",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstanceTemplatesTestIamPermissionsParameters : Parameterizable {
    public var project : String?
    public var resource : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","resource"]
    }
  }

  public func instanceTemplates_testIamPermissions (
    request: TestPermissionsRequest,
    parameters: InstanceTemplatesTestIamPermissionsParameters,
    completion: @escaping (TestPermissionsResponse?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/instanceTemplates/{resource}/testIamPermissions",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesAddAccessConfigParameters : Parameterizable {
    public var instance : String?
    public var networkInterface : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["networkInterface","requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instance","project","zone"]
    }
  }

  public func instances_addAccessConfig (
    request: AccessConfig,
    parameters: InstancesAddAccessConfigParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instances/{instance}/addAccessConfig",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesAggregatedListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func instances_aggregatedList (
    parameters: InstancesAggregatedListParameters,
    completion: @escaping (InstanceAggregatedList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/aggregated/instances",
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesAttachDiskParameters : Parameterizable {
    public var forceAttach : Bool?
    public var instance : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["forceAttach","requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instance","project","zone"]
    }
  }

  public func instances_attachDisk (
    request: AttachedDisk,
    parameters: InstancesAttachDiskParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instances/{instance}/attachDisk",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesDeleteParameters : Parameterizable {
    public var instance : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instance","project","zone"]
    }
  }

  public func instances_delete (
    parameters: InstancesDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/zones/{zone}/instances/{instance}",
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesDeleteAccessConfigParameters : Parameterizable {
    public var accessConfig : String?
    public var instance : String?
    public var networkInterface : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["accessConfig","networkInterface","requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instance","project","zone"]
    }
  }

  public func instances_deleteAccessConfig (
    parameters: InstancesDeleteAccessConfigParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instances/{instance}/deleteAccessConfig",
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesDetachDiskParameters : Parameterizable {
    public var deviceName : String?
    public var instance : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["deviceName","requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instance","project","zone"]
    }
  }

  public func instances_detachDisk (
    parameters: InstancesDetachDiskParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instances/{instance}/detachDisk",
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesGetParameters : Parameterizable {
    public var instance : String?
    public var project : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["instance","project","zone"]
    }
  }

  public func instances_get (
    parameters: InstancesGetParameters,
    completion: @escaping (Instance?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones/{zone}/instances/{instance}",
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesGetIamPolicyParameters : Parameterizable {
    public var project : String?
    public var resource : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","resource","zone"]
    }
  }

  public func instances_getIamPolicy (
    parameters: InstancesGetIamPolicyParameters,
    completion: @escaping (Policy?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones/{zone}/instances/{resource}/getIamPolicy",
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesGetSerialPortOutputParameters : Parameterizable {
    public var instance : String?
    public var port : Int?
    public var project : String?
    public var start : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["port","start"]
    }
    public func pathParameters() -> [String] {
      return ["instance","project","zone"]
    }
  }

  public func instances_getSerialPortOutput (
    parameters: InstancesGetSerialPortOutputParameters,
    completion: @escaping (SerialPortOutput?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones/{zone}/instances/{instance}/serialPort",
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesInsertParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var sourceInstanceTemplate : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId","sourceInstanceTemplate"]
    }
    public func pathParameters() -> [String] {
      return ["project","zone"]
    }
  }

  public func instances_insert (
    request: Instance,
    parameters: InstancesInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instances",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project","zone"]
    }
  }

  public func instances_list (
    parameters: InstancesListParameters,
    completion: @escaping (InstanceList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones/{zone}/instances",
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesListReferrersParameters : Parameterizable {
    public var filter : String?
    public var instance : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["instance","project","zone"]
    }
  }

  public func instances_listReferrers (
    parameters: InstancesListReferrersParameters,
    completion: @escaping (InstanceListReferrers?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones/{zone}/instances/{instance}/referrers",
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesResetParameters : Parameterizable {
    public var instance : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instance","project","zone"]
    }
  }

  public func instances_reset (
    parameters: InstancesResetParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instances/{instance}/reset",
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesSetDeletionProtectionParameters : Parameterizable {
    public var deletionProtection : Bool?
    public var project : String?
    public var requestId : String?
    public var resource : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["deletionProtection","requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","resource","zone"]
    }
  }

  public func instances_setDeletionProtection (
    parameters: InstancesSetDeletionProtectionParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instances/{resource}/setDeletionProtection",
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesSetDiskAutoDeleteParameters : Parameterizable {
    public var autoDelete : Bool?
    public var deviceName : String?
    public var instance : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["autoDelete","deviceName","requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instance","project","zone"]
    }
  }

  public func instances_setDiskAutoDelete (
    parameters: InstancesSetDiskAutoDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instances/{instance}/setDiskAutoDelete",
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesSetIamPolicyParameters : Parameterizable {
    public var project : String?
    public var resource : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","resource","zone"]
    }
  }

  public func instances_setIamPolicy (
    request: ZoneSetPolicyRequest,
    parameters: InstancesSetIamPolicyParameters,
    completion: @escaping (Policy?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instances/{resource}/setIamPolicy",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesSetLabelsParameters : Parameterizable {
    public var instance : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instance","project","zone"]
    }
  }

  public func instances_setLabels (
    request: InstancesSetLabelsRequest,
    parameters: InstancesSetLabelsParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instances/{instance}/setLabels",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesSetMachineResourcesParameters : Parameterizable {
    public var instance : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instance","project","zone"]
    }
  }

  public func instances_setMachineResources (
    request: InstancesSetMachineResourcesRequest,
    parameters: InstancesSetMachineResourcesParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instances/{instance}/setMachineResources",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesSetMachineTypeParameters : Parameterizable {
    public var instance : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instance","project","zone"]
    }
  }

  public func instances_setMachineType (
    request: InstancesSetMachineTypeRequest,
    parameters: InstancesSetMachineTypeParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instances/{instance}/setMachineType",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesSetMetadataParameters : Parameterizable {
    public var instance : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instance","project","zone"]
    }
  }

  public func instances_setMetadata (
    request: Metadata,
    parameters: InstancesSetMetadataParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instances/{instance}/setMetadata",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesSetMinCpuPlatformParameters : Parameterizable {
    public var instance : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instance","project","zone"]
    }
  }

  public func instances_setMinCpuPlatform (
    request: InstancesSetMinCpuPlatformRequest,
    parameters: InstancesSetMinCpuPlatformParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instances/{instance}/setMinCpuPlatform",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesSetSchedulingParameters : Parameterizable {
    public var instance : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instance","project","zone"]
    }
  }

  public func instances_setScheduling (
    request: Scheduling,
    parameters: InstancesSetSchedulingParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instances/{instance}/setScheduling",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesSetServiceAccountParameters : Parameterizable {
    public var instance : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instance","project","zone"]
    }
  }

  public func instances_setServiceAccount (
    request: InstancesSetServiceAccountRequest,
    parameters: InstancesSetServiceAccountParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instances/{instance}/setServiceAccount",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesSetTagsParameters : Parameterizable {
    public var instance : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instance","project","zone"]
    }
  }

  public func instances_setTags (
    request: Tags,
    parameters: InstancesSetTagsParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instances/{instance}/setTags",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesSimulateMaintenanceEventParameters : Parameterizable {
    public var instance : String?
    public var project : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["instance","project","zone"]
    }
  }

  public func instances_simulateMaintenanceEvent (
    parameters: InstancesSimulateMaintenanceEventParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instances/{instance}/simulateMaintenanceEvent",
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesStartParameters : Parameterizable {
    public var instance : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instance","project","zone"]
    }
  }

  public func instances_start (
    parameters: InstancesStartParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instances/{instance}/start",
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesStartWithEncryptionKeyParameters : Parameterizable {
    public var instance : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instance","project","zone"]
    }
  }

  public func instances_startWithEncryptionKey (
    request: InstancesStartWithEncryptionKeyRequest,
    parameters: InstancesStartWithEncryptionKeyParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instances/{instance}/startWithEncryptionKey",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesStopParameters : Parameterizable {
    public var instance : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instance","project","zone"]
    }
  }

  public func instances_stop (
    parameters: InstancesStopParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instances/{instance}/stop",
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesTestIamPermissionsParameters : Parameterizable {
    public var project : String?
    public var resource : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","resource","zone"]
    }
  }

  public func instances_testIamPermissions (
    request: TestPermissionsRequest,
    parameters: InstancesTestIamPermissionsParameters,
    completion: @escaping (TestPermissionsResponse?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instances/{resource}/testIamPermissions",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesUpdateAccessConfigParameters : Parameterizable {
    public var instance : String?
    public var networkInterface : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["networkInterface","requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instance","project","zone"]
    }
  }

  public func instances_updateAccessConfig (
    request: AccessConfig,
    parameters: InstancesUpdateAccessConfigParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/instances/{instance}/updateAccessConfig",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InstancesUpdateNetworkInterfaceParameters : Parameterizable {
    public var instance : String?
    public var networkInterface : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["networkInterface","requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instance","project","zone"]
    }
  }

  public func instances_updateNetworkInterface (
    request: NetworkInterface,
    parameters: InstancesUpdateNetworkInterfaceParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PATCH",
        path: "{project}/zones/{zone}/instances/{instance}/updateNetworkInterface",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InterconnectAttachmentsAggregatedListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func interconnectAttachments_aggregatedList (
    parameters: InterconnectAttachmentsAggregatedListParameters,
    completion: @escaping (InterconnectAttachmentAggregatedList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/aggregated/interconnectAttachments",
        parameters: parameters,
        completion: completion)
  }

  public struct InterconnectAttachmentsDeleteParameters : Parameterizable {
    public var interconnectAttachment : String?
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["interconnectAttachment","project","region"]
    }
  }

  public func interconnectAttachments_delete (
    parameters: InterconnectAttachmentsDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/regions/{region}/interconnectAttachments/{interconnectAttachment}",
        parameters: parameters,
        completion: completion)
  }

  public struct InterconnectAttachmentsGetParameters : Parameterizable {
    public var interconnectAttachment : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["interconnectAttachment","project","region"]
    }
  }

  public func interconnectAttachments_get (
    parameters: InterconnectAttachmentsGetParameters,
    completion: @escaping (InterconnectAttachment?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/interconnectAttachments/{interconnectAttachment}",
        parameters: parameters,
        completion: completion)
  }

  public struct InterconnectAttachmentsInsertParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func interconnectAttachments_insert (
    request: InterconnectAttachment,
    parameters: InterconnectAttachmentsInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/interconnectAttachments",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InterconnectAttachmentsListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func interconnectAttachments_list (
    parameters: InterconnectAttachmentsListParameters,
    completion: @escaping (InterconnectAttachmentList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/interconnectAttachments",
        parameters: parameters,
        completion: completion)
  }

  public struct InterconnectAttachmentsPatchParameters : Parameterizable {
    public var interconnectAttachment : String?
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["interconnectAttachment","project","region"]
    }
  }

  public func interconnectAttachments_patch (
    request: InterconnectAttachment,
    parameters: InterconnectAttachmentsPatchParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PATCH",
        path: "{project}/regions/{region}/interconnectAttachments/{interconnectAttachment}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InterconnectLocationsGetParameters : Parameterizable {
    public var interconnectLocation : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["interconnectLocation","project"]
    }
  }

  public func interconnectLocations_get (
    parameters: InterconnectLocationsGetParameters,
    completion: @escaping (InterconnectLocation?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/interconnectLocations/{interconnectLocation}",
        parameters: parameters,
        completion: completion)
  }

  public struct InterconnectLocationsListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func interconnectLocations_list (
    parameters: InterconnectLocationsListParameters,
    completion: @escaping (InterconnectLocationList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/interconnectLocations",
        parameters: parameters,
        completion: completion)
  }

  public struct InterconnectsDeleteParameters : Parameterizable {
    public var interconnect : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["interconnect","project"]
    }
  }

  public func interconnects_delete (
    parameters: InterconnectsDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/global/interconnects/{interconnect}",
        parameters: parameters,
        completion: completion)
  }

  public struct InterconnectsGetParameters : Parameterizable {
    public var interconnect : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["interconnect","project"]
    }
  }

  public func interconnects_get (
    parameters: InterconnectsGetParameters,
    completion: @escaping (Interconnect?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/interconnects/{interconnect}",
        parameters: parameters,
        completion: completion)
  }

  public struct InterconnectsGetDiagnosticsParameters : Parameterizable {
    public var interconnect : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["interconnect","project"]
    }
  }

  public func interconnects_getDiagnostics (
    parameters: InterconnectsGetDiagnosticsParameters,
    completion: @escaping (InterconnectsGetDiagnosticsResponse?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/interconnects/{interconnect}/getDiagnostics",
        parameters: parameters,
        completion: completion)
  }

  public struct InterconnectsInsertParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func interconnects_insert (
    request: Interconnect,
    parameters: InterconnectsInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/interconnects",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct InterconnectsListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func interconnects_list (
    parameters: InterconnectsListParameters,
    completion: @escaping (InterconnectList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/interconnects",
        parameters: parameters,
        completion: completion)
  }

  public struct InterconnectsPatchParameters : Parameterizable {
    public var interconnect : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["interconnect","project"]
    }
  }

  public func interconnects_patch (
    request: Interconnect,
    parameters: InterconnectsPatchParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PATCH",
        path: "{project}/global/interconnects/{interconnect}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct LicenseCodesGetParameters : Parameterizable {
    public var licenseCode : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["licenseCode","project"]
    }
  }

  public func licenseCodes_get (
    parameters: LicenseCodesGetParameters,
    completion: @escaping (LicenseCode?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/licenseCodes/{licenseCode}",
        parameters: parameters,
        completion: completion)
  }

  public struct LicenseCodesTestIamPermissionsParameters : Parameterizable {
    public var project : String?
    public var resource : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","resource"]
    }
  }

  public func licenseCodes_testIamPermissions (
    request: TestPermissionsRequest,
    parameters: LicenseCodesTestIamPermissionsParameters,
    completion: @escaping (TestPermissionsResponse?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/licenseCodes/{resource}/testIamPermissions",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct LicensesDeleteParameters : Parameterizable {
    public var license : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["license","project"]
    }
  }

  public func licenses_delete (
    parameters: LicensesDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/global/licenses/{license}",
        parameters: parameters,
        completion: completion)
  }

  public struct LicensesGetParameters : Parameterizable {
    public var license : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["license","project"]
    }
  }

  public func licenses_get (
    parameters: LicensesGetParameters,
    completion: @escaping (License?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/licenses/{license}",
        parameters: parameters,
        completion: completion)
  }

  public struct LicensesGetIamPolicyParameters : Parameterizable {
    public var project : String?
    public var resource : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","resource"]
    }
  }

  public func licenses_getIamPolicy (
    parameters: LicensesGetIamPolicyParameters,
    completion: @escaping (Policy?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/licenses/{resource}/getIamPolicy",
        parameters: parameters,
        completion: completion)
  }

  public struct LicensesInsertParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func licenses_insert (
    request: License,
    parameters: LicensesInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/licenses",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct LicensesListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func licenses_list (
    parameters: LicensesListParameters,
    completion: @escaping (LicensesListResponse?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/licenses",
        parameters: parameters,
        completion: completion)
  }

  public struct LicensesSetIamPolicyParameters : Parameterizable {
    public var project : String?
    public var resource : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","resource"]
    }
  }

  public func licenses_setIamPolicy (
    request: GlobalSetPolicyRequest,
    parameters: LicensesSetIamPolicyParameters,
    completion: @escaping (Policy?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/licenses/{resource}/setIamPolicy",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct LicensesTestIamPermissionsParameters : Parameterizable {
    public var project : String?
    public var resource : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","resource"]
    }
  }

  public func licenses_testIamPermissions (
    request: TestPermissionsRequest,
    parameters: LicensesTestIamPermissionsParameters,
    completion: @escaping (TestPermissionsResponse?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/licenses/{resource}/testIamPermissions",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct MachineTypesAggregatedListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func machineTypes_aggregatedList (
    parameters: MachineTypesAggregatedListParameters,
    completion: @escaping (MachineTypeAggregatedList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/aggregated/machineTypes",
        parameters: parameters,
        completion: completion)
  }

  public struct MachineTypesGetParameters : Parameterizable {
    public var machineType : String?
    public var project : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["machineType","project","zone"]
    }
  }

  public func machineTypes_get (
    parameters: MachineTypesGetParameters,
    completion: @escaping (MachineType?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones/{zone}/machineTypes/{machineType}",
        parameters: parameters,
        completion: completion)
  }

  public struct MachineTypesListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project","zone"]
    }
  }

  public func machineTypes_list (
    parameters: MachineTypesListParameters,
    completion: @escaping (MachineTypeList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones/{zone}/machineTypes",
        parameters: parameters,
        completion: completion)
  }

  public struct NetworksAddPeeringParameters : Parameterizable {
    public var network : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["network","project"]
    }
  }

  public func networks_addPeering (
    request: NetworksAddPeeringRequest,
    parameters: NetworksAddPeeringParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/networks/{network}/addPeering",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct NetworksDeleteParameters : Parameterizable {
    public var network : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["network","project"]
    }
  }

  public func networks_delete (
    parameters: NetworksDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/global/networks/{network}",
        parameters: parameters,
        completion: completion)
  }

  public struct NetworksGetParameters : Parameterizable {
    public var network : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["network","project"]
    }
  }

  public func networks_get (
    parameters: NetworksGetParameters,
    completion: @escaping (Network?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/networks/{network}",
        parameters: parameters,
        completion: completion)
  }

  public struct NetworksInsertParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func networks_insert (
    request: Network,
    parameters: NetworksInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/networks",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct NetworksListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func networks_list (
    parameters: NetworksListParameters,
    completion: @escaping (NetworkList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/networks",
        parameters: parameters,
        completion: completion)
  }

  public struct NetworksPatchParameters : Parameterizable {
    public var network : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["network","project"]
    }
  }

  public func networks_patch (
    request: Network,
    parameters: NetworksPatchParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PATCH",
        path: "{project}/global/networks/{network}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct NetworksRemovePeeringParameters : Parameterizable {
    public var network : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["network","project"]
    }
  }

  public func networks_removePeering (
    request: NetworksRemovePeeringRequest,
    parameters: NetworksRemovePeeringParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/networks/{network}/removePeering",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct NetworksSwitchToCustomModeParameters : Parameterizable {
    public var network : String?
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["network","project"]
    }
  }

  public func networks_switchToCustomMode (
    parameters: NetworksSwitchToCustomModeParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/networks/{network}/switchToCustomMode",
        parameters: parameters,
        completion: completion)
  }

  public struct NodeGroupsAddNodesParameters : Parameterizable {
    public var nodeGroup : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["nodeGroup","project","zone"]
    }
  }

  public func nodeGroups_addNodes (
    request: NodeGroupsAddNodesRequest,
    parameters: NodeGroupsAddNodesParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/nodeGroups/{nodeGroup}/addNodes",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct NodeGroupsAggregatedListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func nodeGroups_aggregatedList (
    parameters: NodeGroupsAggregatedListParameters,
    completion: @escaping (NodeGroupAggregatedList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/aggregated/nodeGroups",
        parameters: parameters,
        completion: completion)
  }

  public struct NodeGroupsDeleteParameters : Parameterizable {
    public var nodeGroup : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["nodeGroup","project","zone"]
    }
  }

  public func nodeGroups_delete (
    parameters: NodeGroupsDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/zones/{zone}/nodeGroups/{nodeGroup}",
        parameters: parameters,
        completion: completion)
  }

  public struct NodeGroupsDeleteNodesParameters : Parameterizable {
    public var nodeGroup : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["nodeGroup","project","zone"]
    }
  }

  public func nodeGroups_deleteNodes (
    request: NodeGroupsDeleteNodesRequest,
    parameters: NodeGroupsDeleteNodesParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/nodeGroups/{nodeGroup}/deleteNodes",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct NodeGroupsGetParameters : Parameterizable {
    public var nodeGroup : String?
    public var project : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["nodeGroup","project","zone"]
    }
  }

  public func nodeGroups_get (
    parameters: NodeGroupsGetParameters,
    completion: @escaping (NodeGroup?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones/{zone}/nodeGroups/{nodeGroup}",
        parameters: parameters,
        completion: completion)
  }

  public struct NodeGroupsGetIamPolicyParameters : Parameterizable {
    public var project : String?
    public var resource : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","resource","zone"]
    }
  }

  public func nodeGroups_getIamPolicy (
    parameters: NodeGroupsGetIamPolicyParameters,
    completion: @escaping (Policy?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones/{zone}/nodeGroups/{resource}/getIamPolicy",
        parameters: parameters,
        completion: completion)
  }

  public struct NodeGroupsInsertParameters : Parameterizable {
    public var initialNodeCount : Int?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["initialNodeCount","requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","zone"]
    }
  }

  public func nodeGroups_insert (
    request: NodeGroup,
    parameters: NodeGroupsInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/nodeGroups",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct NodeGroupsListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project","zone"]
    }
  }

  public func nodeGroups_list (
    parameters: NodeGroupsListParameters,
    completion: @escaping (NodeGroupList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones/{zone}/nodeGroups",
        parameters: parameters,
        completion: completion)
  }

  public struct NodeGroupsListNodesParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var nodeGroup : String?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["nodeGroup","project","zone"]
    }
  }

  public func nodeGroups_listNodes (
    parameters: NodeGroupsListNodesParameters,
    completion: @escaping (NodeGroupsListNodes?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/nodeGroups/{nodeGroup}/listNodes",
        parameters: parameters,
        completion: completion)
  }

  public struct NodeGroupsSetIamPolicyParameters : Parameterizable {
    public var project : String?
    public var resource : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","resource","zone"]
    }
  }

  public func nodeGroups_setIamPolicy (
    request: ZoneSetPolicyRequest,
    parameters: NodeGroupsSetIamPolicyParameters,
    completion: @escaping (Policy?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/nodeGroups/{resource}/setIamPolicy",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct NodeGroupsSetNodeTemplateParameters : Parameterizable {
    public var nodeGroup : String?
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["nodeGroup","project","zone"]
    }
  }

  public func nodeGroups_setNodeTemplate (
    request: NodeGroupsSetNodeTemplateRequest,
    parameters: NodeGroupsSetNodeTemplateParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/nodeGroups/{nodeGroup}/setNodeTemplate",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct NodeGroupsTestIamPermissionsParameters : Parameterizable {
    public var project : String?
    public var resource : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","resource","zone"]
    }
  }

  public func nodeGroups_testIamPermissions (
    request: TestPermissionsRequest,
    parameters: NodeGroupsTestIamPermissionsParameters,
    completion: @escaping (TestPermissionsResponse?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/nodeGroups/{resource}/testIamPermissions",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct NodeTemplatesAggregatedListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func nodeTemplates_aggregatedList (
    parameters: NodeTemplatesAggregatedListParameters,
    completion: @escaping (NodeTemplateAggregatedList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/aggregated/nodeTemplates",
        parameters: parameters,
        completion: completion)
  }

  public struct NodeTemplatesDeleteParameters : Parameterizable {
    public var nodeTemplate : String?
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["nodeTemplate","project","region"]
    }
  }

  public func nodeTemplates_delete (
    parameters: NodeTemplatesDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/regions/{region}/nodeTemplates/{nodeTemplate}",
        parameters: parameters,
        completion: completion)
  }

  public struct NodeTemplatesGetParameters : Parameterizable {
    public var nodeTemplate : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["nodeTemplate","project","region"]
    }
  }

  public func nodeTemplates_get (
    parameters: NodeTemplatesGetParameters,
    completion: @escaping (NodeTemplate?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/nodeTemplates/{nodeTemplate}",
        parameters: parameters,
        completion: completion)
  }

  public struct NodeTemplatesGetIamPolicyParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var resource : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","region","resource"]
    }
  }

  public func nodeTemplates_getIamPolicy (
    parameters: NodeTemplatesGetIamPolicyParameters,
    completion: @escaping (Policy?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/nodeTemplates/{resource}/getIamPolicy",
        parameters: parameters,
        completion: completion)
  }

  public struct NodeTemplatesInsertParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func nodeTemplates_insert (
    request: NodeTemplate,
    parameters: NodeTemplatesInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/nodeTemplates",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct NodeTemplatesListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func nodeTemplates_list (
    parameters: NodeTemplatesListParameters,
    completion: @escaping (NodeTemplateList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/nodeTemplates",
        parameters: parameters,
        completion: completion)
  }

  public struct NodeTemplatesSetIamPolicyParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var resource : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","region","resource"]
    }
  }

  public func nodeTemplates_setIamPolicy (
    request: RegionSetPolicyRequest,
    parameters: NodeTemplatesSetIamPolicyParameters,
    completion: @escaping (Policy?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/nodeTemplates/{resource}/setIamPolicy",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct NodeTemplatesTestIamPermissionsParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var resource : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","region","resource"]
    }
  }

  public func nodeTemplates_testIamPermissions (
    request: TestPermissionsRequest,
    parameters: NodeTemplatesTestIamPermissionsParameters,
    completion: @escaping (TestPermissionsResponse?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/nodeTemplates/{resource}/testIamPermissions",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct NodeTypesAggregatedListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func nodeTypes_aggregatedList (
    parameters: NodeTypesAggregatedListParameters,
    completion: @escaping (NodeTypeAggregatedList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/aggregated/nodeTypes",
        parameters: parameters,
        completion: completion)
  }

  public struct NodeTypesGetParameters : Parameterizable {
    public var nodeType : String?
    public var project : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["nodeType","project","zone"]
    }
  }

  public func nodeTypes_get (
    parameters: NodeTypesGetParameters,
    completion: @escaping (NodeType?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones/{zone}/nodeTypes/{nodeType}",
        parameters: parameters,
        completion: completion)
  }

  public struct NodeTypesListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project","zone"]
    }
  }

  public func nodeTypes_list (
    parameters: NodeTypesListParameters,
    completion: @escaping (NodeTypeList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones/{zone}/nodeTypes",
        parameters: parameters,
        completion: completion)
  }

  public struct ProjectsDisableXpnHostParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func projects_disableXpnHost (
    parameters: ProjectsDisableXpnHostParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/disableXpnHost",
        parameters: parameters,
        completion: completion)
  }

  public struct ProjectsDisableXpnResourceParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func projects_disableXpnResource (
    request: ProjectsDisableXpnResourceRequest,
    parameters: ProjectsDisableXpnResourceParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/disableXpnResource",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct ProjectsEnableXpnHostParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func projects_enableXpnHost (
    parameters: ProjectsEnableXpnHostParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/enableXpnHost",
        parameters: parameters,
        completion: completion)
  }

  public struct ProjectsEnableXpnResourceParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func projects_enableXpnResource (
    request: ProjectsEnableXpnResourceRequest,
    parameters: ProjectsEnableXpnResourceParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/enableXpnResource",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct ProjectsGetParameters : Parameterizable {
    public var project : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func projects_get (
    parameters: ProjectsGetParameters,
    completion: @escaping (Project?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}",
        parameters: parameters,
        completion: completion)
  }

  public struct ProjectsGetXpnHostParameters : Parameterizable {
    public var project : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func projects_getXpnHost (
    parameters: ProjectsGetXpnHostParameters,
    completion: @escaping (Project?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/getXpnHost",
        parameters: parameters,
        completion: completion)
  }

  public struct ProjectsGetXpnResourcesParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var order_by : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","order_by","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func projects_getXpnResources (
    parameters: ProjectsGetXpnResourcesParameters,
    completion: @escaping (ProjectsGetXpnResources?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/getXpnResources",
        parameters: parameters,
        completion: completion)
  }

  public struct ProjectsListXpnHostsParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var order_by : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","order_by","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func projects_listXpnHosts (
    request: ProjectsListXpnHostsRequest,
    parameters: ProjectsListXpnHostsParameters,
    completion: @escaping (XpnHostList?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/listXpnHosts",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct ProjectsMoveDiskParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func projects_moveDisk (
    request: DiskMoveRequest,
    parameters: ProjectsMoveDiskParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/moveDisk",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct ProjectsMoveInstanceParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func projects_moveInstance (
    request: InstanceMoveRequest,
    parameters: ProjectsMoveInstanceParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/moveInstance",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct ProjectsSetCommonInstanceMetadataParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func projects_setCommonInstanceMetadata (
    request: Metadata,
    parameters: ProjectsSetCommonInstanceMetadataParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/setCommonInstanceMetadata",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct ProjectsSetDefaultNetworkTierParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func projects_setDefaultNetworkTier (
    request: ProjectsSetDefaultNetworkTierRequest,
    parameters: ProjectsSetDefaultNetworkTierParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/setDefaultNetworkTier",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct ProjectsSetUsageExportBucketParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func projects_setUsageExportBucket (
    request: UsageExportLocation,
    parameters: ProjectsSetUsageExportBucketParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/setUsageExportBucket",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct RegionAutoscalersDeleteParameters : Parameterizable {
    public var autoscaler : String?
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["autoscaler","project","region"]
    }
  }

  public func regionAutoscalers_delete (
    parameters: RegionAutoscalersDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/regions/{region}/autoscalers/{autoscaler}",
        parameters: parameters,
        completion: completion)
  }

  public struct RegionAutoscalersGetParameters : Parameterizable {
    public var autoscaler : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["autoscaler","project","region"]
    }
  }

  public func regionAutoscalers_get (
    parameters: RegionAutoscalersGetParameters,
    completion: @escaping (Autoscaler?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/autoscalers/{autoscaler}",
        parameters: parameters,
        completion: completion)
  }

  public struct RegionAutoscalersInsertParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func regionAutoscalers_insert (
    request: Autoscaler,
    parameters: RegionAutoscalersInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/autoscalers",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct RegionAutoscalersListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func regionAutoscalers_list (
    parameters: RegionAutoscalersListParameters,
    completion: @escaping (RegionAutoscalerList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/autoscalers",
        parameters: parameters,
        completion: completion)
  }

  public struct RegionAutoscalersPatchParameters : Parameterizable {
    public var autoscaler : String?
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["autoscaler","requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func regionAutoscalers_patch (
    request: Autoscaler,
    parameters: RegionAutoscalersPatchParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PATCH",
        path: "{project}/regions/{region}/autoscalers",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct RegionAutoscalersUpdateParameters : Parameterizable {
    public var autoscaler : String?
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["autoscaler","requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func regionAutoscalers_update (
    request: Autoscaler,
    parameters: RegionAutoscalersUpdateParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PUT",
        path: "{project}/regions/{region}/autoscalers",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct RegionBackendServicesDeleteParameters : Parameterizable {
    public var backendService : String?
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["backendService","project","region"]
    }
  }

  public func regionBackendServices_delete (
    parameters: RegionBackendServicesDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/regions/{region}/backendServices/{backendService}",
        parameters: parameters,
        completion: completion)
  }

  public struct RegionBackendServicesGetParameters : Parameterizable {
    public var backendService : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["backendService","project","region"]
    }
  }

  public func regionBackendServices_get (
    parameters: RegionBackendServicesGetParameters,
    completion: @escaping (BackendService?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/backendServices/{backendService}",
        parameters: parameters,
        completion: completion)
  }

  public struct RegionBackendServicesGetHealthParameters : Parameterizable {
    public var backendService : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["backendService","project","region"]
    }
  }

  public func regionBackendServices_getHealth (
    request: ResourceGroupReference,
    parameters: RegionBackendServicesGetHealthParameters,
    completion: @escaping (BackendServiceGroupHealth?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/backendServices/{backendService}/getHealth",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct RegionBackendServicesInsertParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func regionBackendServices_insert (
    request: BackendService,
    parameters: RegionBackendServicesInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/backendServices",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct RegionBackendServicesListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func regionBackendServices_list (
    parameters: RegionBackendServicesListParameters,
    completion: @escaping (BackendServiceList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/backendServices",
        parameters: parameters,
        completion: completion)
  }

  public struct RegionBackendServicesPatchParameters : Parameterizable {
    public var backendService : String?
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["backendService","project","region"]
    }
  }

  public func regionBackendServices_patch (
    request: BackendService,
    parameters: RegionBackendServicesPatchParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PATCH",
        path: "{project}/regions/{region}/backendServices/{backendService}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct RegionBackendServicesUpdateParameters : Parameterizable {
    public var backendService : String?
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["backendService","project","region"]
    }
  }

  public func regionBackendServices_update (
    request: BackendService,
    parameters: RegionBackendServicesUpdateParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PUT",
        path: "{project}/regions/{region}/backendServices/{backendService}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct RegionCommitmentsAggregatedListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func regionCommitments_aggregatedList (
    parameters: RegionCommitmentsAggregatedListParameters,
    completion: @escaping (CommitmentAggregatedList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/aggregated/commitments",
        parameters: parameters,
        completion: completion)
  }

  public struct RegionCommitmentsGetParameters : Parameterizable {
    public var commitment : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["commitment","project","region"]
    }
  }

  public func regionCommitments_get (
    parameters: RegionCommitmentsGetParameters,
    completion: @escaping (Commitment?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/commitments/{commitment}",
        parameters: parameters,
        completion: completion)
  }

  public struct RegionCommitmentsInsertParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func regionCommitments_insert (
    request: Commitment,
    parameters: RegionCommitmentsInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/commitments",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct RegionCommitmentsListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func regionCommitments_list (
    parameters: RegionCommitmentsListParameters,
    completion: @escaping (CommitmentList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/commitments",
        parameters: parameters,
        completion: completion)
  }

  public struct RegionDiskTypesGetParameters : Parameterizable {
    public var diskType : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["diskType","project","region"]
    }
  }

  public func regionDiskTypes_get (
    parameters: RegionDiskTypesGetParameters,
    completion: @escaping (DiskType?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/diskTypes/{diskType}",
        parameters: parameters,
        completion: completion)
  }

  public struct RegionDiskTypesListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func regionDiskTypes_list (
    parameters: RegionDiskTypesListParameters,
    completion: @escaping (RegionDiskTypeList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/diskTypes",
        parameters: parameters,
        completion: completion)
  }

  public struct RegionDisksCreateSnapshotParameters : Parameterizable {
    public var disk : String?
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["disk","project","region"]
    }
  }

  public func regionDisks_createSnapshot (
    request: Snapshot,
    parameters: RegionDisksCreateSnapshotParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/disks/{disk}/createSnapshot",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct RegionDisksDeleteParameters : Parameterizable {
    public var disk : String?
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["disk","project","region"]
    }
  }

  public func regionDisks_delete (
    parameters: RegionDisksDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/regions/{region}/disks/{disk}",
        parameters: parameters,
        completion: completion)
  }

  public struct RegionDisksGetParameters : Parameterizable {
    public var disk : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["disk","project","region"]
    }
  }

  public func regionDisks_get (
    parameters: RegionDisksGetParameters,
    completion: @escaping (Disk?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/disks/{disk}",
        parameters: parameters,
        completion: completion)
  }

  public struct RegionDisksInsertParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var requestId : String?
    public var sourceImage : String?
    public func queryParameters() -> [String] {
      return ["requestId","sourceImage"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func regionDisks_insert (
    request: Disk,
    parameters: RegionDisksInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/disks",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct RegionDisksListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func regionDisks_list (
    parameters: RegionDisksListParameters,
    completion: @escaping (DiskList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/disks",
        parameters: parameters,
        completion: completion)
  }

  public struct RegionDisksResizeParameters : Parameterizable {
    public var disk : String?
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["disk","project","region"]
    }
  }

  public func regionDisks_resize (
    request: RegionDisksResizeRequest,
    parameters: RegionDisksResizeParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/disks/{disk}/resize",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct RegionDisksSetLabelsParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var requestId : String?
    public var resource : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region","resource"]
    }
  }

  public func regionDisks_setLabels (
    request: RegionSetLabelsRequest,
    parameters: RegionDisksSetLabelsParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/disks/{resource}/setLabels",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct RegionDisksTestIamPermissionsParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var resource : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","region","resource"]
    }
  }

  public func regionDisks_testIamPermissions (
    request: TestPermissionsRequest,
    parameters: RegionDisksTestIamPermissionsParameters,
    completion: @escaping (TestPermissionsResponse?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/disks/{resource}/testIamPermissions",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct RegionInstanceGroupManagersAbandonInstancesParameters : Parameterizable {
    public var instanceGroupManager : String?
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instanceGroupManager","project","region"]
    }
  }

  public func regionInstanceGroupManagers_abandonInstances (
    request: RegionInstanceGroupManagersAbandonInstancesRequest,
    parameters: RegionInstanceGroupManagersAbandonInstancesParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/instanceGroupManagers/{instanceGroupManager}/abandonInstances",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct RegionInstanceGroupManagersDeleteParameters : Parameterizable {
    public var instanceGroupManager : String?
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instanceGroupManager","project","region"]
    }
  }

  public func regionInstanceGroupManagers_delete (
    parameters: RegionInstanceGroupManagersDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/regions/{region}/instanceGroupManagers/{instanceGroupManager}",
        parameters: parameters,
        completion: completion)
  }

  public struct RegionInstanceGroupManagersDeleteInstancesParameters : Parameterizable {
    public var instanceGroupManager : String?
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instanceGroupManager","project","region"]
    }
  }

  public func regionInstanceGroupManagers_deleteInstances (
    request: RegionInstanceGroupManagersDeleteInstancesRequest,
    parameters: RegionInstanceGroupManagersDeleteInstancesParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/instanceGroupManagers/{instanceGroupManager}/deleteInstances",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct RegionInstanceGroupManagersGetParameters : Parameterizable {
    public var instanceGroupManager : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["instanceGroupManager","project","region"]
    }
  }

  public func regionInstanceGroupManagers_get (
    parameters: RegionInstanceGroupManagersGetParameters,
    completion: @escaping (InstanceGroupManager?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/instanceGroupManagers/{instanceGroupManager}",
        parameters: parameters,
        completion: completion)
  }

  public struct RegionInstanceGroupManagersInsertParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func regionInstanceGroupManagers_insert (
    request: InstanceGroupManager,
    parameters: RegionInstanceGroupManagersInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/instanceGroupManagers",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct RegionInstanceGroupManagersListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func regionInstanceGroupManagers_list (
    parameters: RegionInstanceGroupManagersListParameters,
    completion: @escaping (RegionInstanceGroupManagerList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/instanceGroupManagers",
        parameters: parameters,
        completion: completion)
  }

  public struct RegionInstanceGroupManagersListManagedInstancesParameters : Parameterizable {
    public var filter : String?
    public var instanceGroupManager : String?
    public var maxResults : Int?
    public var order_by : String?
    public var pageToken : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","order_by","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["instanceGroupManager","project","region"]
    }
  }

  public func regionInstanceGroupManagers_listManagedInstances (
    parameters: RegionInstanceGroupManagersListManagedInstancesParameters,
    completion: @escaping (RegionInstanceGroupManagersListInstancesResponse?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/instanceGroupManagers/{instanceGroupManager}/listManagedInstances",
        parameters: parameters,
        completion: completion)
  }

  public struct RegionInstanceGroupManagersPatchParameters : Parameterizable {
    public var instanceGroupManager : String?
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instanceGroupManager","project","region"]
    }
  }

  public func regionInstanceGroupManagers_patch (
    request: InstanceGroupManager,
    parameters: RegionInstanceGroupManagersPatchParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PATCH",
        path: "{project}/regions/{region}/instanceGroupManagers/{instanceGroupManager}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct RegionInstanceGroupManagersRecreateInstancesParameters : Parameterizable {
    public var instanceGroupManager : String?
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instanceGroupManager","project","region"]
    }
  }

  public func regionInstanceGroupManagers_recreateInstances (
    request: RegionInstanceGroupManagersRecreateRequest,
    parameters: RegionInstanceGroupManagersRecreateInstancesParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/instanceGroupManagers/{instanceGroupManager}/recreateInstances",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct RegionInstanceGroupManagersResizeParameters : Parameterizable {
    public var instanceGroupManager : String?
    public var project : String?
    public var region : String?
    public var requestId : String?
    public var size : Int?
    public func queryParameters() -> [String] {
      return ["requestId","size"]
    }
    public func pathParameters() -> [String] {
      return ["instanceGroupManager","project","region"]
    }
  }

  public func regionInstanceGroupManagers_resize (
    parameters: RegionInstanceGroupManagersResizeParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/instanceGroupManagers/{instanceGroupManager}/resize",
        parameters: parameters,
        completion: completion)
  }

  public struct RegionInstanceGroupManagersSetInstanceTemplateParameters : Parameterizable {
    public var instanceGroupManager : String?
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instanceGroupManager","project","region"]
    }
  }

  public func regionInstanceGroupManagers_setInstanceTemplate (
    request: RegionInstanceGroupManagersSetTemplateRequest,
    parameters: RegionInstanceGroupManagersSetInstanceTemplateParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/instanceGroupManagers/{instanceGroupManager}/setInstanceTemplate",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct RegionInstanceGroupManagersSetTargetPoolsParameters : Parameterizable {
    public var instanceGroupManager : String?
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instanceGroupManager","project","region"]
    }
  }

  public func regionInstanceGroupManagers_setTargetPools (
    request: RegionInstanceGroupManagersSetTargetPoolsRequest,
    parameters: RegionInstanceGroupManagersSetTargetPoolsParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/instanceGroupManagers/{instanceGroupManager}/setTargetPools",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct RegionInstanceGroupsGetParameters : Parameterizable {
    public var instanceGroup : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["instanceGroup","project","region"]
    }
  }

  public func regionInstanceGroups_get (
    parameters: RegionInstanceGroupsGetParameters,
    completion: @escaping (InstanceGroup?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/instanceGroups/{instanceGroup}",
        parameters: parameters,
        completion: completion)
  }

  public struct RegionInstanceGroupsListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func regionInstanceGroups_list (
    parameters: RegionInstanceGroupsListParameters,
    completion: @escaping (RegionInstanceGroupList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/instanceGroups",
        parameters: parameters,
        completion: completion)
  }

  public struct RegionInstanceGroupsListInstancesParameters : Parameterizable {
    public var filter : String?
    public var instanceGroup : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["instanceGroup","project","region"]
    }
  }

  public func regionInstanceGroups_listInstances (
    request: RegionInstanceGroupsListInstancesRequest,
    parameters: RegionInstanceGroupsListInstancesParameters,
    completion: @escaping (RegionInstanceGroupsListInstances?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/instanceGroups/{instanceGroup}/listInstances",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct RegionInstanceGroupsSetNamedPortsParameters : Parameterizable {
    public var instanceGroup : String?
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["instanceGroup","project","region"]
    }
  }

  public func regionInstanceGroups_setNamedPorts (
    request: RegionInstanceGroupsSetNamedPortsRequest,
    parameters: RegionInstanceGroupsSetNamedPortsParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/instanceGroups/{instanceGroup}/setNamedPorts",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct RegionOperationsDeleteParameters : Parameterizable {
    public var operation : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["operation","project","region"]
    }
  }

  public func regionOperations_delete (
    parameters: RegionOperationsDeleteParameters,
    completion: @escaping (Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/regions/{region}/operations/{operation}",
        parameters: parameters,
        completion: completion)
  }

  public struct RegionOperationsGetParameters : Parameterizable {
    public var operation : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["operation","project","region"]
    }
  }

  public func regionOperations_get (
    parameters: RegionOperationsGetParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/operations/{operation}",
        parameters: parameters,
        completion: completion)
  }

  public struct RegionOperationsListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func regionOperations_list (
    parameters: RegionOperationsListParameters,
    completion: @escaping (OperationList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/operations",
        parameters: parameters,
        completion: completion)
  }

  public struct RegionsGetParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func regions_get (
    parameters: RegionsGetParameters,
    completion: @escaping (Region?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}",
        parameters: parameters,
        completion: completion)
  }

  public struct RegionsListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func regions_list (
    parameters: RegionsListParameters,
    completion: @escaping (RegionList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions",
        parameters: parameters,
        completion: completion)
  }

  public struct RoutersAggregatedListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func routers_aggregatedList (
    parameters: RoutersAggregatedListParameters,
    completion: @escaping (RouterAggregatedList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/aggregated/routers",
        parameters: parameters,
        completion: completion)
  }

  public struct RoutersDeleteParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var requestId : String?
    public var router : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region","router"]
    }
  }

  public func routers_delete (
    parameters: RoutersDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/regions/{region}/routers/{router}",
        parameters: parameters,
        completion: completion)
  }

  public struct RoutersGetParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var router : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","region","router"]
    }
  }

  public func routers_get (
    parameters: RoutersGetParameters,
    completion: @escaping (Router?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/routers/{router}",
        parameters: parameters,
        completion: completion)
  }

  public struct RoutersGetNatMappingInfoParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var region : String?
    public var router : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project","region","router"]
    }
  }

  public func routers_getNatMappingInfo (
    parameters: RoutersGetNatMappingInfoParameters,
    completion: @escaping (VmEndpointNatMappingsList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/routers/{router}/getNatMappingInfo",
        parameters: parameters,
        completion: completion)
  }

  public struct RoutersGetRouterStatusParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var router : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","region","router"]
    }
  }

  public func routers_getRouterStatus (
    parameters: RoutersGetRouterStatusParameters,
    completion: @escaping (RouterStatusResponse?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/routers/{router}/getRouterStatus",
        parameters: parameters,
        completion: completion)
  }

  public struct RoutersInsertParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func routers_insert (
    request: Router,
    parameters: RoutersInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/routers",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct RoutersListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func routers_list (
    parameters: RoutersListParameters,
    completion: @escaping (RouterList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/routers",
        parameters: parameters,
        completion: completion)
  }

  public struct RoutersPatchParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var requestId : String?
    public var router : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region","router"]
    }
  }

  public func routers_patch (
    request: Router,
    parameters: RoutersPatchParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PATCH",
        path: "{project}/regions/{region}/routers/{router}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct RoutersPreviewParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var router : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","region","router"]
    }
  }

  public func routers_preview (
    request: Router,
    parameters: RoutersPreviewParameters,
    completion: @escaping (RoutersPreviewResponse?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/routers/{router}/preview",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct RoutersUpdateParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var requestId : String?
    public var router : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region","router"]
    }
  }

  public func routers_update (
    request: Router,
    parameters: RoutersUpdateParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PUT",
        path: "{project}/regions/{region}/routers/{router}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct RoutesDeleteParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var route : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","route"]
    }
  }

  public func routes_delete (
    parameters: RoutesDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/global/routes/{route}",
        parameters: parameters,
        completion: completion)
  }

  public struct RoutesGetParameters : Parameterizable {
    public var project : String?
    public var route : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","route"]
    }
  }

  public func routes_get (
    parameters: RoutesGetParameters,
    completion: @escaping (Route?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/routes/{route}",
        parameters: parameters,
        completion: completion)
  }

  public struct RoutesInsertParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func routes_insert (
    request: Route,
    parameters: RoutesInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/routes",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct RoutesListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func routes_list (
    parameters: RoutesListParameters,
    completion: @escaping (RouteList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/routes",
        parameters: parameters,
        completion: completion)
  }

  public struct SecurityPoliciesAddRuleParameters : Parameterizable {
    public var project : String?
    public var securityPolicy : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","securityPolicy"]
    }
  }

  public func securityPolicies_addRule (
    request: SecurityPolicyRule,
    parameters: SecurityPoliciesAddRuleParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/securityPolicies/{securityPolicy}/addRule",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct SecurityPoliciesDeleteParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var securityPolicy : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","securityPolicy"]
    }
  }

  public func securityPolicies_delete (
    parameters: SecurityPoliciesDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/global/securityPolicies/{securityPolicy}",
        parameters: parameters,
        completion: completion)
  }

  public struct SecurityPoliciesGetParameters : Parameterizable {
    public var project : String?
    public var securityPolicy : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","securityPolicy"]
    }
  }

  public func securityPolicies_get (
    parameters: SecurityPoliciesGetParameters,
    completion: @escaping (SecurityPolicy?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/securityPolicies/{securityPolicy}",
        parameters: parameters,
        completion: completion)
  }

  public struct SecurityPoliciesGetRuleParameters : Parameterizable {
    public var priority : Int?
    public var project : String?
    public var securityPolicy : String?
    public func queryParameters() -> [String] {
      return ["priority"]
    }
    public func pathParameters() -> [String] {
      return ["project","securityPolicy"]
    }
  }

  public func securityPolicies_getRule (
    parameters: SecurityPoliciesGetRuleParameters,
    completion: @escaping (SecurityPolicyRule?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/securityPolicies/{securityPolicy}/getRule",
        parameters: parameters,
        completion: completion)
  }

  public struct SecurityPoliciesInsertParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func securityPolicies_insert (
    request: SecurityPolicy,
    parameters: SecurityPoliciesInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/securityPolicies",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct SecurityPoliciesListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func securityPolicies_list (
    parameters: SecurityPoliciesListParameters,
    completion: @escaping (SecurityPolicyList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/securityPolicies",
        parameters: parameters,
        completion: completion)
  }

  public struct SecurityPoliciesPatchParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var securityPolicy : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","securityPolicy"]
    }
  }

  public func securityPolicies_patch (
    request: SecurityPolicy,
    parameters: SecurityPoliciesPatchParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PATCH",
        path: "{project}/global/securityPolicies/{securityPolicy}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct SecurityPoliciesPatchRuleParameters : Parameterizable {
    public var priority : Int?
    public var project : String?
    public var securityPolicy : String?
    public func queryParameters() -> [String] {
      return ["priority"]
    }
    public func pathParameters() -> [String] {
      return ["project","securityPolicy"]
    }
  }

  public func securityPolicies_patchRule (
    request: SecurityPolicyRule,
    parameters: SecurityPoliciesPatchRuleParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/securityPolicies/{securityPolicy}/patchRule",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct SecurityPoliciesRemoveRuleParameters : Parameterizable {
    public var priority : Int?
    public var project : String?
    public var securityPolicy : String?
    public func queryParameters() -> [String] {
      return ["priority"]
    }
    public func pathParameters() -> [String] {
      return ["project","securityPolicy"]
    }
  }

  public func securityPolicies_removeRule (
    parameters: SecurityPoliciesRemoveRuleParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/securityPolicies/{securityPolicy}/removeRule",
        parameters: parameters,
        completion: completion)
  }

  public struct SnapshotsDeleteParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var snapshot : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","snapshot"]
    }
  }

  public func snapshots_delete (
    parameters: SnapshotsDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/global/snapshots/{snapshot}",
        parameters: parameters,
        completion: completion)
  }

  public struct SnapshotsGetParameters : Parameterizable {
    public var project : String?
    public var snapshot : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","snapshot"]
    }
  }

  public func snapshots_get (
    parameters: SnapshotsGetParameters,
    completion: @escaping (Snapshot?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/snapshots/{snapshot}",
        parameters: parameters,
        completion: completion)
  }

  public struct SnapshotsGetIamPolicyParameters : Parameterizable {
    public var project : String?
    public var resource : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","resource"]
    }
  }

  public func snapshots_getIamPolicy (
    parameters: SnapshotsGetIamPolicyParameters,
    completion: @escaping (Policy?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/snapshots/{resource}/getIamPolicy",
        parameters: parameters,
        completion: completion)
  }

  public struct SnapshotsListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func snapshots_list (
    parameters: SnapshotsListParameters,
    completion: @escaping (SnapshotList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/snapshots",
        parameters: parameters,
        completion: completion)
  }

  public struct SnapshotsSetIamPolicyParameters : Parameterizable {
    public var project : String?
    public var resource : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","resource"]
    }
  }

  public func snapshots_setIamPolicy (
    request: GlobalSetPolicyRequest,
    parameters: SnapshotsSetIamPolicyParameters,
    completion: @escaping (Policy?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/snapshots/{resource}/setIamPolicy",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct SnapshotsSetLabelsParameters : Parameterizable {
    public var project : String?
    public var resource : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","resource"]
    }
  }

  public func snapshots_setLabels (
    request: GlobalSetLabelsRequest,
    parameters: SnapshotsSetLabelsParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/snapshots/{resource}/setLabels",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct SnapshotsTestIamPermissionsParameters : Parameterizable {
    public var project : String?
    public var resource : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","resource"]
    }
  }

  public func snapshots_testIamPermissions (
    request: TestPermissionsRequest,
    parameters: SnapshotsTestIamPermissionsParameters,
    completion: @escaping (TestPermissionsResponse?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/snapshots/{resource}/testIamPermissions",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct SslCertificatesDeleteParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var sslCertificate : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","sslCertificate"]
    }
  }

  public func sslCertificates_delete (
    parameters: SslCertificatesDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/global/sslCertificates/{sslCertificate}",
        parameters: parameters,
        completion: completion)
  }

  public struct SslCertificatesGetParameters : Parameterizable {
    public var project : String?
    public var sslCertificate : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","sslCertificate"]
    }
  }

  public func sslCertificates_get (
    parameters: SslCertificatesGetParameters,
    completion: @escaping (SslCertificate?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/sslCertificates/{sslCertificate}",
        parameters: parameters,
        completion: completion)
  }

  public struct SslCertificatesInsertParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func sslCertificates_insert (
    request: SslCertificate,
    parameters: SslCertificatesInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/sslCertificates",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct SslCertificatesListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func sslCertificates_list (
    parameters: SslCertificatesListParameters,
    completion: @escaping (SslCertificateList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/sslCertificates",
        parameters: parameters,
        completion: completion)
  }

  public struct SslPoliciesDeleteParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var sslPolicy : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","sslPolicy"]
    }
  }

  public func sslPolicies_delete (
    parameters: SslPoliciesDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/global/sslPolicies/{sslPolicy}",
        parameters: parameters,
        completion: completion)
  }

  public struct SslPoliciesGetParameters : Parameterizable {
    public var project : String?
    public var sslPolicy : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","sslPolicy"]
    }
  }

  public func sslPolicies_get (
    parameters: SslPoliciesGetParameters,
    completion: @escaping (SslPolicy?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/sslPolicies/{sslPolicy}",
        parameters: parameters,
        completion: completion)
  }

  public struct SslPoliciesInsertParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func sslPolicies_insert (
    request: SslPolicy,
    parameters: SslPoliciesInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/sslPolicies",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct SslPoliciesListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func sslPolicies_list (
    parameters: SslPoliciesListParameters,
    completion: @escaping (SslPoliciesList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/sslPolicies",
        parameters: parameters,
        completion: completion)
  }

  public struct SslPoliciesListAvailableFeaturesParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func sslPolicies_listAvailableFeatures (
    parameters: SslPoliciesListAvailableFeaturesParameters,
    completion: @escaping (SslPoliciesListAvailableFeaturesResponse?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/sslPolicies/listAvailableFeatures",
        parameters: parameters,
        completion: completion)
  }

  public struct SslPoliciesPatchParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var sslPolicy : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","sslPolicy"]
    }
  }

  public func sslPolicies_patch (
    request: SslPolicy,
    parameters: SslPoliciesPatchParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PATCH",
        path: "{project}/global/sslPolicies/{sslPolicy}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct SubnetworksAggregatedListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func subnetworks_aggregatedList (
    parameters: SubnetworksAggregatedListParameters,
    completion: @escaping (SubnetworkAggregatedList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/aggregated/subnetworks",
        parameters: parameters,
        completion: completion)
  }

  public struct SubnetworksDeleteParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var requestId : String?
    public var subnetwork : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region","subnetwork"]
    }
  }

  public func subnetworks_delete (
    parameters: SubnetworksDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/regions/{region}/subnetworks/{subnetwork}",
        parameters: parameters,
        completion: completion)
  }

  public struct SubnetworksExpandIpCidrRangeParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var requestId : String?
    public var subnetwork : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region","subnetwork"]
    }
  }

  public func subnetworks_expandIpCidrRange (
    request: SubnetworksExpandIpCidrRangeRequest,
    parameters: SubnetworksExpandIpCidrRangeParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/subnetworks/{subnetwork}/expandIpCidrRange",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct SubnetworksGetParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var subnetwork : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","region","subnetwork"]
    }
  }

  public func subnetworks_get (
    parameters: SubnetworksGetParameters,
    completion: @escaping (Subnetwork?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/subnetworks/{subnetwork}",
        parameters: parameters,
        completion: completion)
  }

  public struct SubnetworksGetIamPolicyParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var resource : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","region","resource"]
    }
  }

  public func subnetworks_getIamPolicy (
    parameters: SubnetworksGetIamPolicyParameters,
    completion: @escaping (Policy?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/subnetworks/{resource}/getIamPolicy",
        parameters: parameters,
        completion: completion)
  }

  public struct SubnetworksInsertParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func subnetworks_insert (
    request: Subnetwork,
    parameters: SubnetworksInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/subnetworks",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct SubnetworksListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func subnetworks_list (
    parameters: SubnetworksListParameters,
    completion: @escaping (SubnetworkList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/subnetworks",
        parameters: parameters,
        completion: completion)
  }

  public struct SubnetworksListUsableParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func subnetworks_listUsable (
    parameters: SubnetworksListUsableParameters,
    completion: @escaping (UsableSubnetworksAggregatedList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/aggregated/subnetworks/listUsable",
        parameters: parameters,
        completion: completion)
  }

  public struct SubnetworksPatchParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var requestId : String?
    public var subnetwork : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region","subnetwork"]
    }
  }

  public func subnetworks_patch (
    request: Subnetwork,
    parameters: SubnetworksPatchParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PATCH",
        path: "{project}/regions/{region}/subnetworks/{subnetwork}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct SubnetworksSetIamPolicyParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var resource : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","region","resource"]
    }
  }

  public func subnetworks_setIamPolicy (
    request: RegionSetPolicyRequest,
    parameters: SubnetworksSetIamPolicyParameters,
    completion: @escaping (Policy?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/subnetworks/{resource}/setIamPolicy",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct SubnetworksSetPrivateIpGoogleAccessParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var requestId : String?
    public var subnetwork : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region","subnetwork"]
    }
  }

  public func subnetworks_setPrivateIpGoogleAccess (
    request: SubnetworksSetPrivateIpGoogleAccessRequest,
    parameters: SubnetworksSetPrivateIpGoogleAccessParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/subnetworks/{subnetwork}/setPrivateIpGoogleAccess",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct SubnetworksTestIamPermissionsParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var resource : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","region","resource"]
    }
  }

  public func subnetworks_testIamPermissions (
    request: TestPermissionsRequest,
    parameters: SubnetworksTestIamPermissionsParameters,
    completion: @escaping (TestPermissionsResponse?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/subnetworks/{resource}/testIamPermissions",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct TargetHttpProxiesDeleteParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var targetHttpProxy : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","targetHttpProxy"]
    }
  }

  public func targetHttpProxies_delete (
    parameters: TargetHttpProxiesDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/global/targetHttpProxies/{targetHttpProxy}",
        parameters: parameters,
        completion: completion)
  }

  public struct TargetHttpProxiesGetParameters : Parameterizable {
    public var project : String?
    public var targetHttpProxy : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","targetHttpProxy"]
    }
  }

  public func targetHttpProxies_get (
    parameters: TargetHttpProxiesGetParameters,
    completion: @escaping (TargetHttpProxy?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/targetHttpProxies/{targetHttpProxy}",
        parameters: parameters,
        completion: completion)
  }

  public struct TargetHttpProxiesInsertParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func targetHttpProxies_insert (
    request: TargetHttpProxy,
    parameters: TargetHttpProxiesInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/targetHttpProxies",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct TargetHttpProxiesListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func targetHttpProxies_list (
    parameters: TargetHttpProxiesListParameters,
    completion: @escaping (TargetHttpProxyList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/targetHttpProxies",
        parameters: parameters,
        completion: completion)
  }

  public struct TargetHttpProxiesSetUrlMapParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var targetHttpProxy : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","targetHttpProxy"]
    }
  }

  public func targetHttpProxies_setUrlMap (
    request: UrlMapReference,
    parameters: TargetHttpProxiesSetUrlMapParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/targetHttpProxies/{targetHttpProxy}/setUrlMap",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct TargetHttpsProxiesDeleteParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var targetHttpsProxy : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","targetHttpsProxy"]
    }
  }

  public func targetHttpsProxies_delete (
    parameters: TargetHttpsProxiesDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/global/targetHttpsProxies/{targetHttpsProxy}",
        parameters: parameters,
        completion: completion)
  }

  public struct TargetHttpsProxiesGetParameters : Parameterizable {
    public var project : String?
    public var targetHttpsProxy : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","targetHttpsProxy"]
    }
  }

  public func targetHttpsProxies_get (
    parameters: TargetHttpsProxiesGetParameters,
    completion: @escaping (TargetHttpsProxy?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/targetHttpsProxies/{targetHttpsProxy}",
        parameters: parameters,
        completion: completion)
  }

  public struct TargetHttpsProxiesInsertParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func targetHttpsProxies_insert (
    request: TargetHttpsProxy,
    parameters: TargetHttpsProxiesInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/targetHttpsProxies",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct TargetHttpsProxiesListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func targetHttpsProxies_list (
    parameters: TargetHttpsProxiesListParameters,
    completion: @escaping (TargetHttpsProxyList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/targetHttpsProxies",
        parameters: parameters,
        completion: completion)
  }

  public struct TargetHttpsProxiesSetQuicOverrideParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var targetHttpsProxy : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","targetHttpsProxy"]
    }
  }

  public func targetHttpsProxies_setQuicOverride (
    request: TargetHttpsProxiesSetQuicOverrideRequest,
    parameters: TargetHttpsProxiesSetQuicOverrideParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/targetHttpsProxies/{targetHttpsProxy}/setQuicOverride",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct TargetHttpsProxiesSetSslCertificatesParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var targetHttpsProxy : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","targetHttpsProxy"]
    }
  }

  public func targetHttpsProxies_setSslCertificates (
    request: TargetHttpsProxiesSetSslCertificatesRequest,
    parameters: TargetHttpsProxiesSetSslCertificatesParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/targetHttpsProxies/{targetHttpsProxy}/setSslCertificates",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct TargetHttpsProxiesSetSslPolicyParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var targetHttpsProxy : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","targetHttpsProxy"]
    }
  }

  public func targetHttpsProxies_setSslPolicy (
    request: SslPolicyReference,
    parameters: TargetHttpsProxiesSetSslPolicyParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/targetHttpsProxies/{targetHttpsProxy}/setSslPolicy",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct TargetHttpsProxiesSetUrlMapParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var targetHttpsProxy : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","targetHttpsProxy"]
    }
  }

  public func targetHttpsProxies_setUrlMap (
    request: UrlMapReference,
    parameters: TargetHttpsProxiesSetUrlMapParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/targetHttpsProxies/{targetHttpsProxy}/setUrlMap",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct TargetInstancesAggregatedListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func targetInstances_aggregatedList (
    parameters: TargetInstancesAggregatedListParameters,
    completion: @escaping (TargetInstanceAggregatedList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/aggregated/targetInstances",
        parameters: parameters,
        completion: completion)
  }

  public struct TargetInstancesDeleteParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var targetInstance : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","targetInstance","zone"]
    }
  }

  public func targetInstances_delete (
    parameters: TargetInstancesDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/zones/{zone}/targetInstances/{targetInstance}",
        parameters: parameters,
        completion: completion)
  }

  public struct TargetInstancesGetParameters : Parameterizable {
    public var project : String?
    public var targetInstance : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","targetInstance","zone"]
    }
  }

  public func targetInstances_get (
    parameters: TargetInstancesGetParameters,
    completion: @escaping (TargetInstance?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones/{zone}/targetInstances/{targetInstance}",
        parameters: parameters,
        completion: completion)
  }

  public struct TargetInstancesInsertParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","zone"]
    }
  }

  public func targetInstances_insert (
    request: TargetInstance,
    parameters: TargetInstancesInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/zones/{zone}/targetInstances",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct TargetInstancesListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project","zone"]
    }
  }

  public func targetInstances_list (
    parameters: TargetInstancesListParameters,
    completion: @escaping (TargetInstanceList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones/{zone}/targetInstances",
        parameters: parameters,
        completion: completion)
  }

  public struct TargetPoolsAddHealthCheckParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var requestId : String?
    public var targetPool : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region","targetPool"]
    }
  }

  public func targetPools_addHealthCheck (
    request: TargetPoolsAddHealthCheckRequest,
    parameters: TargetPoolsAddHealthCheckParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/targetPools/{targetPool}/addHealthCheck",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct TargetPoolsAddInstanceParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var requestId : String?
    public var targetPool : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region","targetPool"]
    }
  }

  public func targetPools_addInstance (
    request: TargetPoolsAddInstanceRequest,
    parameters: TargetPoolsAddInstanceParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/targetPools/{targetPool}/addInstance",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct TargetPoolsAggregatedListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func targetPools_aggregatedList (
    parameters: TargetPoolsAggregatedListParameters,
    completion: @escaping (TargetPoolAggregatedList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/aggregated/targetPools",
        parameters: parameters,
        completion: completion)
  }

  public struct TargetPoolsDeleteParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var requestId : String?
    public var targetPool : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region","targetPool"]
    }
  }

  public func targetPools_delete (
    parameters: TargetPoolsDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/regions/{region}/targetPools/{targetPool}",
        parameters: parameters,
        completion: completion)
  }

  public struct TargetPoolsGetParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var targetPool : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","region","targetPool"]
    }
  }

  public func targetPools_get (
    parameters: TargetPoolsGetParameters,
    completion: @escaping (TargetPool?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/targetPools/{targetPool}",
        parameters: parameters,
        completion: completion)
  }

  public struct TargetPoolsGetHealthParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var targetPool : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","region","targetPool"]
    }
  }

  public func targetPools_getHealth (
    request: InstanceReference,
    parameters: TargetPoolsGetHealthParameters,
    completion: @escaping (TargetPoolInstanceHealth?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/targetPools/{targetPool}/getHealth",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct TargetPoolsInsertParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func targetPools_insert (
    request: TargetPool,
    parameters: TargetPoolsInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/targetPools",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct TargetPoolsListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func targetPools_list (
    parameters: TargetPoolsListParameters,
    completion: @escaping (TargetPoolList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/targetPools",
        parameters: parameters,
        completion: completion)
  }

  public struct TargetPoolsRemoveHealthCheckParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var requestId : String?
    public var targetPool : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region","targetPool"]
    }
  }

  public func targetPools_removeHealthCheck (
    request: TargetPoolsRemoveHealthCheckRequest,
    parameters: TargetPoolsRemoveHealthCheckParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/targetPools/{targetPool}/removeHealthCheck",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct TargetPoolsRemoveInstanceParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var requestId : String?
    public var targetPool : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region","targetPool"]
    }
  }

  public func targetPools_removeInstance (
    request: TargetPoolsRemoveInstanceRequest,
    parameters: TargetPoolsRemoveInstanceParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/targetPools/{targetPool}/removeInstance",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct TargetPoolsSetBackupParameters : Parameterizable {
    public var failoverRatio : Float?
    public var project : String?
    public var region : String?
    public var requestId : String?
    public var targetPool : String?
    public func queryParameters() -> [String] {
      return ["failoverRatio","requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region","targetPool"]
    }
  }

  public func targetPools_setBackup (
    request: TargetReference,
    parameters: TargetPoolsSetBackupParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/targetPools/{targetPool}/setBackup",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct TargetSslProxiesDeleteParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var targetSslProxy : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","targetSslProxy"]
    }
  }

  public func targetSslProxies_delete (
    parameters: TargetSslProxiesDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/global/targetSslProxies/{targetSslProxy}",
        parameters: parameters,
        completion: completion)
  }

  public struct TargetSslProxiesGetParameters : Parameterizable {
    public var project : String?
    public var targetSslProxy : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","targetSslProxy"]
    }
  }

  public func targetSslProxies_get (
    parameters: TargetSslProxiesGetParameters,
    completion: @escaping (TargetSslProxy?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/targetSslProxies/{targetSslProxy}",
        parameters: parameters,
        completion: completion)
  }

  public struct TargetSslProxiesInsertParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func targetSslProxies_insert (
    request: TargetSslProxy,
    parameters: TargetSslProxiesInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/targetSslProxies",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct TargetSslProxiesListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func targetSslProxies_list (
    parameters: TargetSslProxiesListParameters,
    completion: @escaping (TargetSslProxyList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/targetSslProxies",
        parameters: parameters,
        completion: completion)
  }

  public struct TargetSslProxiesSetBackendServiceParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var targetSslProxy : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","targetSslProxy"]
    }
  }

  public func targetSslProxies_setBackendService (
    request: TargetSslProxiesSetBackendServiceRequest,
    parameters: TargetSslProxiesSetBackendServiceParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/targetSslProxies/{targetSslProxy}/setBackendService",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct TargetSslProxiesSetProxyHeaderParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var targetSslProxy : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","targetSslProxy"]
    }
  }

  public func targetSslProxies_setProxyHeader (
    request: TargetSslProxiesSetProxyHeaderRequest,
    parameters: TargetSslProxiesSetProxyHeaderParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/targetSslProxies/{targetSslProxy}/setProxyHeader",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct TargetSslProxiesSetSslCertificatesParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var targetSslProxy : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","targetSslProxy"]
    }
  }

  public func targetSslProxies_setSslCertificates (
    request: TargetSslProxiesSetSslCertificatesRequest,
    parameters: TargetSslProxiesSetSslCertificatesParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/targetSslProxies/{targetSslProxy}/setSslCertificates",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct TargetSslProxiesSetSslPolicyParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var targetSslProxy : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","targetSslProxy"]
    }
  }

  public func targetSslProxies_setSslPolicy (
    request: SslPolicyReference,
    parameters: TargetSslProxiesSetSslPolicyParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/targetSslProxies/{targetSslProxy}/setSslPolicy",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct TargetTcpProxiesDeleteParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var targetTcpProxy : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","targetTcpProxy"]
    }
  }

  public func targetTcpProxies_delete (
    parameters: TargetTcpProxiesDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/global/targetTcpProxies/{targetTcpProxy}",
        parameters: parameters,
        completion: completion)
  }

  public struct TargetTcpProxiesGetParameters : Parameterizable {
    public var project : String?
    public var targetTcpProxy : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","targetTcpProxy"]
    }
  }

  public func targetTcpProxies_get (
    parameters: TargetTcpProxiesGetParameters,
    completion: @escaping (TargetTcpProxy?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/targetTcpProxies/{targetTcpProxy}",
        parameters: parameters,
        completion: completion)
  }

  public struct TargetTcpProxiesInsertParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func targetTcpProxies_insert (
    request: TargetTcpProxy,
    parameters: TargetTcpProxiesInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/targetTcpProxies",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct TargetTcpProxiesListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func targetTcpProxies_list (
    parameters: TargetTcpProxiesListParameters,
    completion: @escaping (TargetTcpProxyList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/targetTcpProxies",
        parameters: parameters,
        completion: completion)
  }

  public struct TargetTcpProxiesSetBackendServiceParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var targetTcpProxy : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","targetTcpProxy"]
    }
  }

  public func targetTcpProxies_setBackendService (
    request: TargetTcpProxiesSetBackendServiceRequest,
    parameters: TargetTcpProxiesSetBackendServiceParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/targetTcpProxies/{targetTcpProxy}/setBackendService",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct TargetTcpProxiesSetProxyHeaderParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var targetTcpProxy : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","targetTcpProxy"]
    }
  }

  public func targetTcpProxies_setProxyHeader (
    request: TargetTcpProxiesSetProxyHeaderRequest,
    parameters: TargetTcpProxiesSetProxyHeaderParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/targetTcpProxies/{targetTcpProxy}/setProxyHeader",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct TargetVpnGatewaysAggregatedListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func targetVpnGateways_aggregatedList (
    parameters: TargetVpnGatewaysAggregatedListParameters,
    completion: @escaping (TargetVpnGatewayAggregatedList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/aggregated/targetVpnGateways",
        parameters: parameters,
        completion: completion)
  }

  public struct TargetVpnGatewaysDeleteParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var requestId : String?
    public var targetVpnGateway : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region","targetVpnGateway"]
    }
  }

  public func targetVpnGateways_delete (
    parameters: TargetVpnGatewaysDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/regions/{region}/targetVpnGateways/{targetVpnGateway}",
        parameters: parameters,
        completion: completion)
  }

  public struct TargetVpnGatewaysGetParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var targetVpnGateway : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","region","targetVpnGateway"]
    }
  }

  public func targetVpnGateways_get (
    parameters: TargetVpnGatewaysGetParameters,
    completion: @escaping (TargetVpnGateway?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/targetVpnGateways/{targetVpnGateway}",
        parameters: parameters,
        completion: completion)
  }

  public struct TargetVpnGatewaysInsertParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func targetVpnGateways_insert (
    request: TargetVpnGateway,
    parameters: TargetVpnGatewaysInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/targetVpnGateways",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct TargetVpnGatewaysListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func targetVpnGateways_list (
    parameters: TargetVpnGatewaysListParameters,
    completion: @escaping (TargetVpnGatewayList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/targetVpnGateways",
        parameters: parameters,
        completion: completion)
  }

  public struct UrlMapsDeleteParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var urlMap : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","urlMap"]
    }
  }

  public func urlMaps_delete (
    parameters: UrlMapsDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/global/urlMaps/{urlMap}",
        parameters: parameters,
        completion: completion)
  }

  public struct UrlMapsGetParameters : Parameterizable {
    public var project : String?
    public var urlMap : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","urlMap"]
    }
  }

  public func urlMaps_get (
    parameters: UrlMapsGetParameters,
    completion: @escaping (UrlMap?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/urlMaps/{urlMap}",
        parameters: parameters,
        completion: completion)
  }

  public struct UrlMapsInsertParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func urlMaps_insert (
    request: UrlMap,
    parameters: UrlMapsInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/urlMaps",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct UrlMapsInvalidateCacheParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var urlMap : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","urlMap"]
    }
  }

  public func urlMaps_invalidateCache (
    request: CacheInvalidationRule,
    parameters: UrlMapsInvalidateCacheParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/urlMaps/{urlMap}/invalidateCache",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct UrlMapsListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func urlMaps_list (
    parameters: UrlMapsListParameters,
    completion: @escaping (UrlMapList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/global/urlMaps",
        parameters: parameters,
        completion: completion)
  }

  public struct UrlMapsPatchParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var urlMap : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","urlMap"]
    }
  }

  public func urlMaps_patch (
    request: UrlMap,
    parameters: UrlMapsPatchParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PATCH",
        path: "{project}/global/urlMaps/{urlMap}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct UrlMapsUpdateParameters : Parameterizable {
    public var project : String?
    public var requestId : String?
    public var urlMap : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","urlMap"]
    }
  }

  public func urlMaps_update (
    request: UrlMap,
    parameters: UrlMapsUpdateParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "PUT",
        path: "{project}/global/urlMaps/{urlMap}",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct UrlMapsValidateParameters : Parameterizable {
    public var project : String?
    public var urlMap : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","urlMap"]
    }
  }

  public func urlMaps_validate (
    request: UrlMapsValidateRequest,
    parameters: UrlMapsValidateParameters,
    completion: @escaping (UrlMapsValidateResponse?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/global/urlMaps/{urlMap}/validate",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct VpnTunnelsAggregatedListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func vpnTunnels_aggregatedList (
    parameters: VpnTunnelsAggregatedListParameters,
    completion: @escaping (VpnTunnelAggregatedList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/aggregated/vpnTunnels",
        parameters: parameters,
        completion: completion)
  }

  public struct VpnTunnelsDeleteParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var requestId : String?
    public var vpnTunnel : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region","vpnTunnel"]
    }
  }

  public func vpnTunnels_delete (
    parameters: VpnTunnelsDeleteParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/regions/{region}/vpnTunnels/{vpnTunnel}",
        parameters: parameters,
        completion: completion)
  }

  public struct VpnTunnelsGetParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var vpnTunnel : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","region","vpnTunnel"]
    }
  }

  public func vpnTunnels_get (
    parameters: VpnTunnelsGetParameters,
    completion: @escaping (VpnTunnel?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/vpnTunnels/{vpnTunnel}",
        parameters: parameters,
        completion: completion)
  }

  public struct VpnTunnelsInsertParameters : Parameterizable {
    public var project : String?
    public var region : String?
    public var requestId : String?
    public func queryParameters() -> [String] {
      return ["requestId"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func vpnTunnels_insert (
    request: VpnTunnel,
    parameters: VpnTunnelsInsertParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "POST",
        path: "{project}/regions/{region}/vpnTunnels",
        request: request,
        parameters: parameters,
        completion: completion)
  }

  public struct VpnTunnelsListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var region : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project","region"]
    }
  }

  public func vpnTunnels_list (
    parameters: VpnTunnelsListParameters,
    completion: @escaping (VpnTunnelList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/regions/{region}/vpnTunnels",
        parameters: parameters,
        completion: completion)
  }

  public struct ZoneOperationsDeleteParameters : Parameterizable {
    public var operation : String?
    public var project : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["operation","project","zone"]
    }
  }

  public func zoneOperations_delete (
    parameters: ZoneOperationsDeleteParameters,
    completion: @escaping (Error?) -> ()) throws {
      try perform(
        method: "DELETE",
        path: "{project}/zones/{zone}/operations/{operation}",
        parameters: parameters,
        completion: completion)
  }

  public struct ZoneOperationsGetParameters : Parameterizable {
    public var operation : String?
    public var project : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["operation","project","zone"]
    }
  }

  public func zoneOperations_get (
    parameters: ZoneOperationsGetParameters,
    completion: @escaping (Operation?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones/{zone}/operations/{operation}",
        parameters: parameters,
        completion: completion)
  }

  public struct ZoneOperationsListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project","zone"]
    }
  }

  public func zoneOperations_list (
    parameters: ZoneOperationsListParameters,
    completion: @escaping (OperationList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones/{zone}/operations",
        parameters: parameters,
        completion: completion)
  }

  public struct ZonesGetParameters : Parameterizable {
    public var project : String?
    public var zone : String?
    public func queryParameters() -> [String] {
      return []
    }
    public func pathParameters() -> [String] {
      return ["project","zone"]
    }
  }

  public func zones_get (
    parameters: ZonesGetParameters,
    completion: @escaping (Zone?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones/{zone}",
        parameters: parameters,
        completion: completion)
  }

  public struct ZonesListParameters : Parameterizable {
    public var filter : String?
    public var maxResults : Int?
    public var orderBy : String?
    public var pageToken : String?
    public var project : String?
    public func queryParameters() -> [String] {
      return ["filter","maxResults","orderBy","pageToken"]
    }
    public func pathParameters() -> [String] {
      return ["project"]
    }
  }

  public func zones_list (
    parameters: ZonesListParameters,
    completion: @escaping (ZoneList?, Error?) -> ()) throws {
      try perform(
        method: "GET",
        path: "{project}/zones",
        parameters: parameters,
        completion: completion)
  }
}

