# Swift REST Client Generator for Google APIs

This project contains Swift code that generates a API clients from Discovery Documents
produced by the [Google API Discovery Service](https://developers.google.com/discovery/).

It is experimental work-in-progress, but provides a good start
at calling many Google APIs from Swift.

## Usage

API clients are be produced by running the generator with Discovery
Documents downloaded from the Discovery Service. 
Running the following writes a client to standard output:

```
% google-api-swift-generator <filename>
```

This project also includes an experimental CLI generator that
generates command-line interfaces for APIs. These CLIs depend
on the generated client libraries and are produced with the
`google-cli-swift-generator` command. Running the following
writes a CLI `main.swift` to standard output:
 
```
% google-cli-swift-generator <filename>
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
