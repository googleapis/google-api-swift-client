# Swift REST API Client Generator

This project contains Swift code that generates a API clients from Discovery Documents
produced by the [Google API Discovery Service](https://developers.google.com/discovery/).

It is currently experimental work-in-progress, but we believe it provides a good start
at calling many Google APIs from Swift.

## Usage

Currently API clients must be produced by running the generator directly using Discovery
Documents downloaded from the Discovery Service. Running the following writes a client to 
standard output:

```
% google-api-go-generator <filename>
```

The [Examples](Examples) directory contains several example clients.

## Contributing

We'd love to collaborate on this. See [CONTRIBUTING.md](CONTRIBUTING.md) for details.

## Copyright

Copyright 2019, Google Inc.

## License

Released under the Apache 2.0 license.
