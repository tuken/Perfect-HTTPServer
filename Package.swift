// swift-tools-version:5.0

import PackageDescription

let package = Package(
	name: "PerfectHTTPServer",
	products: [
		.library(name: "PerfectHTTPServer", targets: ["PerfectHTTPServer"])
	],
	dependencies: [
		.package(url: "https://github.com/PerfectlySoft/Perfect-Net.git", from: "3.1.2"),
		.package(url: "https://github.com/PerfectlySoft/Perfect-HTTP.git", from: "3.0.12"),
		.package(url: "https://github.com/PerfectlySoft/Perfect-CZlib-src.git", from: "0.0.0")
	],
	targets: [
		.target(name: "PerfectCHTTPParser", dependencies: []),
		.target(name: "PerfectHTTPServer", dependencies: ["PerfectCHTTPParser", "PerfectNet", "PerfectHTTP", "PerfectCZlib"]),
		.testTarget(name: "PerfectHTTPServerTests", dependencies: ["PerfectHTTPServer"])
	]
)
