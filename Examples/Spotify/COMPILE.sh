#!/bin/sh

# Regenerate the Spotify client library from a YAML-format
# Discovery Document.

# YAML is converted to JSON with j2y2j
# available at https://github.com/googleapis/gnostic/blob/master/tools/j2y2j
j2y2j disco-spotify-v1.yaml --json > disco-spotify-v1.json 

../../.build/debug/google-api-swift-generator disco-spotify-v1.json > Sources/Spotify.swift 

