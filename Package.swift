// swift-tools-version:5.5

import PackageDescription

let package = Package(
        name: "SoulSwapComponentKit",
        platforms: [
            .iOS(.v13),
        ],
        products: [
            .library(
                    name: "SoulSwapComponentKit",
                    targets: ["SoulSwapComponentKit"]),
        ],
        dependencies: [
            .package(url: "https://github.com/Juanpe/SkeletonView.git", from: "1.7.0"),
            .package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.0.1")),
            .package(url: "https://github.com/SoulSwapFinance/SoulSwapHudKit.git", .upToNextMajor(from: "2.0.0")),
            .package(url: "https://github.com/SoulSwapFinance/SoulSwapSectionsTableView.git", .upToNextMajor(from: "1.0.0")),
            .package(url: "https://github.com/SoulSwapFinance/SoulSwapThemeKit.git", .upToNextMajor(from: "2.0.0")),
            .package(url: "https://github.com/horizontalsystems/UIExtensions.Swift.git", .upToNextMajor(from: "1.0.0")),
        ],
        targets: [
            .target(
                    name: "SoulSwapComponentKit",
                    dependencies: [
                        "SkeletonView",
                        "SnapKit",
                        .product(name: "SoulSwapHudKit", package: "SoulSwapHudKit"),
                        .product(name: "SoulSwapSectionsTableView", package: "SoulSwapSectionsTableView"),
                        .product(name: "SoulSwapThemeKit", package: "SoulSwapThemeKit"),
                        .product(name: "UIExtensions", package: "UIExtensions.Swift"),
                    ]
            ),
        ]
)
