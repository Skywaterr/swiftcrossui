// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "HelloWorld",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .macCatalyst(.v13)],
    dependencies: [
        .package(
            url: "https://github.com/moreSwift/swift-cross-ui",
            .upToNextMinor(from: "0.7.0")
        ),
    ],
    targets: [
        .executableTarget(
            name: "HelloWorld",
            dependencies: [
                .product(name: "SwiftCrossUI", package: "swift-cross-ui"),
                .product(name: "AppKitBackend", package: "swift-cross-ui"),
                //.product(name: "WinUIBackend", package: "swift-cross-ui"),
            ]
        ),
    ]
)


// If using DefaultBackend under the second dependency,
// MAKE SURE that before using swift-bundler run, set 
// the environment variable to the right backend, such as
// this for Windows:
// $env:SCUI_DEFAULT_BACKEND = "WinUIBackend"
//
// This is mentioned in
// https://docs.swiftcrossui.dev/documentation/swiftcrossui/defaultbackend