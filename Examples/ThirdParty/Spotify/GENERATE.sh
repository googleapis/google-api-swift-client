#!/bin/sh

# Copyright 2019 Google Inc. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Regenerate the Spotify client library from a YAML-format Discovery Document.
# (For ease of human-editing, we write the Discovery Document with YAML)

# YAML is converted to JSON with j2y2j
# available at https://github.com/googleapis/gnostic/blob/master/tools/j2y2j
j2y2j disco-spotify-v1.yaml --json > disco-spotify-v1.json 

mkdir -p Sources
ROOT=../../../.build/debug

$ROOT/google-api-swift-generator disco-spotify-v1.json > Sources/Spotify.swift 
$ROOT/google-cli-swift-generator disco-spotify-v1.json > Sources/main.swift 
