# Swift REST Client Generator for Google APIs

This project contains Swift code that generates a API clients from Discovery Documents
produced by the [Google API Discovery Service](https://developers.google.com/discovery/).

It is experimental work-in-progress, but provides a good start
at calling many Google APIs from Swift. Our focus is on supporting
calls from server-side and command-line Swift applications, but
calls from any platform with Swift support should be possible.

## Usage

Running `google-api-swift-generator` will list all available Google APIs and generate a Swift client file in your current directory.

```sh
./google-api-swift-generator
  1) Abusive Experience Report API
  2) Accelerated Mobile Pages (AMP) URL API
  3) Access Approval API
  4) Access Context Manager API
  5) Ad Exchange Buyer API
  6) Ad Exchange Buyer API II
  7) Ad Experience Report API
  8) Admin Reports API
  9) AdSense Management API
 10) AdSense Host API
 11) G Suite Alert Center API
 12) Google Analytics API
[...]
165) Web Security Scanner API
166) YouTube Data API
167) YouTube Analytics API
168) YouTube Reporting API
Please enter the number corresponding to the service or 0 to exit
> 166
wrote /private/var/folders/km/h0s9nvsd1n58sbrn2wjsf1h80000gn/T/youtubev3.swift
```

It is also possible to run the generator with Discovery Documents downloaded from the Discovery Service by passing the json file as argument:

Running the following creates a file named `discovery-document-filename.swift` in your current directory.

```sh
google-api-swift-generator <discovery-document-filename.json>
```

This project also includes an experimental CLI generator that
generates command-line interfaces for APIs. These CLIs depend
on the generated client libraries and are produced with the
`google-cli-swift-generator` command. Running the following
writes a CLI `main.swift` to standard output:

```sh
google-cli-swift-generator <discovery-document-filename.json>
```

The [Examples](Examples) directory contains several example 
clients including scripts for generating both client libraries and 
CLIs.

## Contributing

We'd love to collaborate on this. See [CONTRIBUTING.md](CONTRIBUTING.md) for details.

## Copyright

Copyright 2019, Google Inc.

## License

Released under the Apache 2.0 license.
