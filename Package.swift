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
        .package(url: "https://github.com/adison-ads/adison-offerwall-ios-sdk", exact: "3.16.4")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "KakaoTOfwModule",
            url: "https://github.com/adison-ads/adison-ofw-module-kakaot-ios/releases/download/0.13.0/KakaoTOfwModule.zip",
            checksum: "a09c947a33a7a301c1c0480f5a68f276800d9685c7b2b9fc47e8661446030529"
        ),
        .target(
            name: "KakaoTOfwModuleTarget",
            dependencies: [.product(name: "AdisonOfferwallSDK", package: "adison-offerwall-ios-sdk")],
            path: "Sources"
        )
    ]
)
