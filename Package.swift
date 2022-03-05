// swift-tools-version:5.5

import PackageDescription

let package = Package(
	name: "ZenCoreGraphics",
	platforms: [
		.iOS(.v12),
		.tvOS(.v12),
		.macOS(.v10_10),
		.watchOS(.v2)
	],
	products: [
		.library(
			name: "ZenCoreGraphics",
			type: .static,
			targets: ["ZenCoreGraphics"]
		)
	],
	dependencies: [
		.package(url: "https://github.com/roland19deschain/ZenSwift.git", from: "1.8.1"),
	],
	targets: [
		.target(
			name: "ZenCoreGraphics",
			dependencies: [
				.product(name: "ZenSwift", package: "zenswift")
			],
			path: "Sources/"
		),
		.testTarget(
			name: "ZenCoreGraphicsTests",
			dependencies: ["ZenCoreGraphics"],
			path: "Tests/"
		)
	],
	swiftLanguageVersions: [.v5]
)
