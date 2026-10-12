// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "PassyBLEBadgePackage",
    platforms: [.iOS("15.6"), .macCatalyst("15.6")],
    products: [
        .library(name: "PassyBLEBadge",
                 targets: ["PassyBLEBadgeDependencies"])
    ],
    dependencies: [
        .package(url: "https://github.com/PassySRL/PassyCorePackage.git", exact: "1.0.38")
    ],
    targets: [
        .target(name: "PassyBLEBadgeDependencies",
                dependencies: ["PassyBLEBadge",
                               .product(name: "PassyCore",
                                        package: "PassyCorePackage")]),
        .binaryTarget(name: "PassyBLEBadge",
                      url: "https://github.com/PassySRL/PassyBLEBadgePackage/releases/download/0.0.3/PassyBLEBadge-0.0.3.xcframework.zip", checksum: "e7a25bcc264e89a1d38a1b8e02716adab05f38760ab6a67740ff05cb189f7776")
    ]
)
