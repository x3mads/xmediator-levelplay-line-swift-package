// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "XMediatorLevelPlayLineAdapterCompatibility",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(name: "LevelPlayLineAdapter", targets: ["LevelPlayLineAdapterWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ironsource-mobile/LevelPlay-Line-Adapter-Swift-Package.git", exact: "5.6.0"),
    ],
    targets: [
        .target(
            name: "LevelPlayLineAdapterWrapper",
            dependencies: [
                .product(
                    name: "LineAdapter",
                    package: "LevelPlay-Line-Adapter-Swift-Package",
                    moduleAliases: ["LineAdapter": "LevelPlayLineAdapterTarget"]
                ),
            ]
        ),
    ]
)
