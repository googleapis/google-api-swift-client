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

let USE_SERVICE_ACCOUNT = false
let SERVICE_ACCOUNT_CREDENTIALS = ".credentials/service_account.json"

let CLIENT_CREDENTIALS = "google.json"
let TOKEN = "google.json"

let PROJECT = "hello-87"
let ZONE = "us-west1-b"
let INSTANCE = "sample"

func main() throws {
  let arguments = CommandLine.arguments
  
  if arguments.count == 1 {
    print("Usage: \(arguments[0]) [options]")
    return
  }
  
  let scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  
  var tokenProvider : TokenProvider
  #if os(OSX)
  tokenProvider = BrowserTokenProvider(credentials:CLIENT_CREDENTIALS, token:TOKEN)!
  #else
  tokenProvider = DefaultTokenProvider(scopes:scopes)!
  #endif
  
  if USE_SERVICE_ACCOUNT {
    if #available(OSX 10.12, *) {
      let homeURL = FileManager.default.homeDirectoryForCurrentUser
      let credentialsURL = homeURL.appendingPathComponent(SERVICE_ACCOUNT_CREDENTIALS)
      tokenProvider = ServiceAccountTokenProvider(credentialsURL:credentialsURL,
                                                  scopes:scopes)!
    } else {
      print("This sample requires OSX 10.12 or later.")
    }
  }
  
  let compute = try Compute(tokenProvider:tokenProvider)
  
  if arguments[1] == "login" {
    #if os(OSX)
    let browserTokenProvider = tokenProvider as! BrowserTokenProvider
    try browserTokenProvider.signIn(scopes:scopes)
    try browserTokenProvider.saveToken(TOKEN)
    #endif
  }
  
  if arguments[1] == "list" {
    var parameters = Compute.InstancesListParameters()
    parameters.project = PROJECT
    parameters.zone = ZONE
    let sem = DispatchSemaphore(value: 0)
    try compute.instances_list(parameters: parameters) {response, error in
      print(String(describing:response))
      print(String(describing:error))
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
  }
  
  if arguments[1] == "insert" {
    var disk = AttachedDisk()
    disk.kind = "compute#attachedDisk"
    disk.type = "PERSISTENT"
    disk.boot = true
    disk.mode = "READ_WRITE"
    disk.autoDelete = true
    disk.deviceName = INSTANCE
    var initializeParams = AttachedDiskInitializeParams()
    initializeParams.sourceImage = "projects/debian-cloud/global/images/debian-9-stretch-v20190124"
    initializeParams.diskType = "projects/hello-87/zones/us-west1-b/diskTypes/pd-standard"
    initializeParams.diskSizeGb = "10"
    disk.initializeParams = initializeParams
    var accessConfig = AccessConfig()
    accessConfig.kind = "compute#accessConfig"
    accessConfig.name = "External NAT"
    accessConfig.type = "ONE_TO_ONE_NAT"
    accessConfig.networkTier = "PREMIUM"
    var networkInterface = NetworkInterface()
    networkInterface.kind = "compute#networkInterface"
    networkInterface.subnetwork = "projects/hello-87/regions/us-west1/subnetworks/default"
    networkInterface.accessConfigs = [accessConfig]
    var request = Instance()
    request.name = INSTANCE
    request.machineType = "zones/us-west1-b/machineTypes/f1-micro"
    request.networkInterfaces = [networkInterface]
    request.disks = [disk]
    var parameters = Compute.InstancesInsertParameters()
    parameters.project = PROJECT
    parameters.zone = ZONE
    let sem = DispatchSemaphore(value: 0)
    try compute.instances_insert(request: request,
                                 parameters: parameters) {response, error in
                                  print(String(describing:response))
                                  print(String(describing:error))
                                  sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
  }
  
  if arguments[1] == "delete" {
    var parameters = Compute.InstancesDeleteParameters()
    parameters.project = PROJECT
    parameters.zone = ZONE
    parameters.instance = INSTANCE
    let sem = DispatchSemaphore(value: 0)
    try compute.instances_delete(parameters: parameters) {response, error in
      print(String(describing:response))
      print(String(describing:error))
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
  }
}

do {
  try main()
} catch (let error) {
  print("ERROR: \(error)")
}
