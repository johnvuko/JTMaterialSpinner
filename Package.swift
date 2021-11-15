// swift-tools-version:5.3.0
import PackageDescription

let package = Package(
	name: "JTMaterialSpinner",
    platforms: [.iOS(.v10)],
    products: [.library(name: "JTMaterialSpinner", targets: ["JTMaterialSpinner"])],
    targets: [
        .target(name: "JTMaterialSpinner", path: "JTMaterialSpinner")
    ],
    swiftLanguageVersions: [SwiftVersion.v5]
    
)
