// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "openapi-reference-cycle-repro",
    platforms: [.macOS(.v15)],
    dependencies: [
        .package(url: "https://github.com/apple/swift-openapi-generator", from: "1.10.2"),
        .package(
            url: "https://github.com/swift-server/swift-openapi-async-http-client", from: "1.1.0"),
    ],
    targets: [
        .executableTarget(
            name: "openapi-reference-cycle-repro",
            dependencies: [
                .product(name: "OpenAPIAsyncHTTPClient", package: "swift-openapi-async-http-client")
            ],
        )
    ]
)
