// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "PassyBLEBadgePackage",
    platforms: [.iOS(.v17), .macCatalyst(.v17)],
    products: [
        .library(name: "PassyBLEBadge",
                 targets: ["PassyBLEBadgeDependencies"])
    ],
    dependencies: [
        .package(url: "https://github.com/PassySRL/PassyCorePackage.git", exact: "1.0.37")
    ],
    targets: [
        .target(name: "PassyBLEBadgeDependencies",
                dependencies: ["PassyBLEBadge",
                               .product(name: "PassyCore",
                                        package: "PassyCorePackage")]),
        .binaryTarget(name: "PassyBLEBadge",
                      url: "https://github.com/PassySRL/PassyBLEBadgePackage/releases/download/0.0.2/PassyBLEBadge-0.0.2.xcframework.zip", checksum: "4faed2c89d0fed0febb4c60566a48f39e7d9ee46edab68e6a79f4e2b648ea857")
    ]
)
