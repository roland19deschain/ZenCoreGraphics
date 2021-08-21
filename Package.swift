// swift-tools-version:5.3

import PackageDescription

let package = Package(
	name: "ZenCoreGraphics",
	platforms: [
		.macOS(.v10_10),
		.iOS(.v9),
		.tvOS(.v9),
		.watchOS(.v2)
	],
	products: [
		.library(
			name: "ZenCoreGraphics",
			type: .static,
			targets: ["ZenCoreGraphics"]
		)
	],
	dependencies: [],
	targets: [
		.target(
			name: "ZenCoreGraphics",
			dependencies: [],
			path: "ZenCoreGraphics/SourceCode/"
		)
	]
)
