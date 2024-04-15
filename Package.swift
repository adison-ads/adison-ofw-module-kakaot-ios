// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KakaoTOfwModule",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "KakaoTOfwModule",
            targets: ["KakaoTOfwModule", "KakaoTOfwModuleTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/adison-ads/adison-offerwall-ios-sdk", exact: "3.5.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "KakaoTOfwModule",
            url: "https://github.com/adison-ads/adison-ofw-module-kakaot-ios/releases/download/0.10.0/KakaoTOfwModule.zip",
            checksum: "1e59abe314ce432f3bc0aef9dcf739026e8f46e4ed53f822dd73310ffbf26271"
        ),
        .target(
            name: "KakaoTOfwModuleTarget",
            dependencies: [.product(name: "AdisonOfferwallSDK", package: "adison-offerwall-ios-sdk")],
            path: "Sources"
        )
    ]
)
