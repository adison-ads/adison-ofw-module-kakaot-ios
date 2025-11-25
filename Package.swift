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
        .package(url: "https://github.com/adison-ads/adison-offerwall-ios-sdk", exact: "3.16.10")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "KakaoTOfwModule",
            url: "https://github.com/adison-ads/adison-ofw-module-kakaot-ios/releases/download/0.13.4/KakaoTOfwModule.zip",
            checksum: "7eaff09a0ee2f189a4d02ceb78fa82428877afc5695e192d8a7c7b3b605ff06e"
        ),
        .target(
            name: "KakaoTOfwModuleTarget",
            dependencies: [.product(name: "AdisonOfferwallSDK", package: "adison-offerwall-ios-sdk")],
            path: "Sources"
        )
    ]
)
