// swift-tools-version:4.2

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


import PackageDescription

let package = Package(
  name: "google-api-swift-client",
  products: [
    .library(name: "GoogleAPIRuntime", targets: ["GoogleAPIRuntime"]),
    .library(name: "Discovery", targets: ["Discovery"]),
  ],
  dependencies: [
    .package(url: "https://github.com/googleapis/google-auth-library-swift.git", from: "0.5.3"),
  ],
  targets: [
    .target(name: "google-api-swift-generator", dependencies: ["Discovery"], path: "Sources/google-api-swift-generator"),
    .target(name: "google-cli-swift-generator", dependencies: ["Discovery"], path: "Sources/google-cli-swift-generator"),
    .target(name: "GoogleAPIRuntime", dependencies: ["OAuth2"], path: "Sources/GoogleAPIRuntime"),
    .target(name: "Discovery", dependencies: [], path: "Sources/Discovery"),
  ]
)
