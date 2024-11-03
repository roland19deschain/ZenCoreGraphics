// swift-tools-version:6.0

import PackageDescription

let package = Package(
	name: "ZenCoreGraphics",
	platforms: [
		.iOS(.v14),
		.tvOS(.v14),
		.macOS(.v10_13),
		.watchOS(.v4)
	],
	products: [
		.library(
			name: "ZenCoreGraphics",
			type: .static,
			targets: ["ZenCoreGraphics"]
		)
	],
	dependencies: [
		.package(url: "https://github.com/roland19deschain/ZenSwift.git", from: "2.1.0")
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
	swiftLanguageModes: [.v6]
)
