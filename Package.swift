// swift-tools-version: 5.10

import PackageDescription

let package = Package(
	name: "ZenCoreGraphics",
	platforms: [
		.iOS(.v14),
		.tvOS(.v14),
		.macOS(.v10_15),
		.watchOS(.v6)
	],
	products: [
		.library(
			name: "ZenCoreGraphics",
			type: .static,
			targets: ["ZenCoreGraphics"]
		)
	],
	dependencies: [
		.package(url: "https://github.com/roland19deschain/ZenSwift.git", from: "2.1.13")
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
