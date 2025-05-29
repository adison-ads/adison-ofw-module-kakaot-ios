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
        .package(url: "https://github.com/adison-ads/adison-offerwall-ios-sdk", exact: "3.14.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "KakaoTOfwModule",
            url: "https://github.com/adison-ads/adison-ofw-module-kakaot-ios/releases/download/0.12.2/KakaoTOfwModule.zip",
            checksum: "404bac4c37690a08b8dd6c0a7ce2abe7e342bc4e37b50e348650c8ea89dca2b4"
        ),
        .target(
            name: "KakaoTOfwModuleTarget",
            dependencies: [.product(name: "AdisonOfferwallSDK", package: "adison-offerwall-ios-sdk")],
            path: "Sources"
        )
    ]
)
