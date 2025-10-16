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
            url: "https://github.com/adison-ads/adison-ofw-module-kakaot-ios/releases/download/0.13.2/KakaoTOfwModule.zip",
            checksum: "a4b08b86859567ea99b67c05f96b0ef55519b643a4ac60e5f8c758d4e5d800aa"
        ),
        .target(
            name: "KakaoTOfwModuleTarget",
            dependencies: [.product(name: "AdisonOfferwallSDK", package: "adison-offerwall-ios-sdk")],
            path: "Sources"
        )
    ]
)
