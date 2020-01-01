# How to Contribute

We'd love to accept your patches and contributions to this project. There are
just a few small guidelines you need to follow.

## Contributor License Agreement

Contributions to this project must be accompanied by a Contributor License
Agreement. You (or your employer) retain the copyright to your contribution,
this simply gives us permission to use and redistribute your contributions as
part of the project. Head over to <https://cla.developers.google.com/> to see
your current agreements on file or to sign a new one.

You generally only need to submit a CLA once, so if you've already submitted one
(even if it was for a different project), you probably don't need to do it
again.

## Code reviews

All submissions, including submissions by project members, require review. We
use GitHub pull requests for this purpose. Consult
[GitHub Help](https://help.github.com/articles/about-pull-requests/) for more
information on using pull requests.

## Getting started

These steps outline how to:
- get a discovery document
- convert the document into a swift file
- convert the swift file into a library
- try out the library

### Download a discovery document

When you open this project in xcode, the dependencies should already be installed.
You should find and download a discovery document to use. You can find these through google's [API Discovery Service](https://developers.google.com/discovery/v1/reference/apis/list).
Use the `Try this API` side-panel to fetch details about the discovery document, then follow the link returned under `items.discoveryRestUrl` to see the document.

Download the raw json into a file in your project.

### Generating a client

Open a terminal in the root directory of the project. Build the project:

```sh
swift build -c debug
```

Run the command line tool, `google-api-swift-generator`, passing your discovery document file as the argument. It should write a swift file to stdout.

```sh
./.build/debug/google-api-swift-generator discovery-document.json
```

In order to turn this into a library to try out, you should create another directory in Sources to keep the source code tht gets generated.

```sh
mkdir Sources/Client
```

Write the output of the API generator to a file in your Client directory

```sh
./.build/debug/google-api-swift-generator discovery-document.json > Sources/Client/client.swift
```

you need to modify the [Package.swift](./Package.swift) to build another library, that you can then consume.

add the following library to the products array:

```swift
.library(name: "Client", targets: ["Client"])
```

Add the following target to the targets array:

```swift
.target(name: "Client", dependencies: ["GoogleAPIRuntime"], path: "Sources/Client")
```

and build the project again form the command line.

If the project no longer compiles, there is likely an error in the output of the generator that needs to be addressed.
To have Xcode provide warnings and errors in your client library code, under Product > Scheme, change the scheme to Client, and rebuild the project.

### Using the client

In order to use the client and verify that it's behaviour is as expected, you need a service account key with the appropriate permissions granted to use the API you're targetting.

Download a service account key file from the [google cloud console](https://console.cloud.google.com/iam-admin/serviceaccounts) or generate one using the gcloud command line tool, ensuring you've granted appropriate access. Add the json key file to your project, or store elsewhere on your local machine.

In order to test the library, create a new folder in sources called Usage, and a file called main.swift

```sh
mkdir Sources/Usage
touch Sources/Usage/main.swift
```

Add an executable to the [Package.swift](./Package.swift) under products:

```swift
.executable(name: "Usage", targets: ["Usage"])
```

and add a target to the targets array:
```swift
.target(name: "Usage", dependencies: ["Client"], path: "Sources/Usage")
```

Now you can add code to the file `Sources/Usage/main.swift` to try the library, and see if it works as expected.

For example, using the Bigquery service discovery document, the usage might look like so:

```swift
import Foundation
import Client
import OAuth2

let scopes = ["https://www.googleapis.com/auth/cloud-platform"]
let serviceAccountFileURL = URL(fileURLWithPath: ProcessInfo.processInfo.environment["SERVICE_ACCOUNT_KEY_PATH"]!)
let googleServiceAccount = ServiceAccountTokenProvider.init(credentialsURL: serviceAccountFileURL, scopes: scopes)!

let bqService = try! Bigquery(tokenProvider: googleServiceAccount)

let params: Bigquery.DatasetsListParameters = Bigquery.DatasetsListParameters(all: nil, filter: nil, maxResults: nil, pageToken: nil, projectId: "bigquery-public-data")

do {
    try bqService.datasets_list(parameters: params) { (datasetsOpt: Bigquery.DatasetList?, error: Error?) in
        guard let datasets = datasetsOpt else {
            print("Could not get datasets")
            return
        }
        print(datasets)
        print("Done.")
    }
    RunLoop.main.run(until: Date(timeIntervalSinceNow: 5))
} catch let error {
    print("Exited with an error: \(error.localizedDescription)")
}
```
