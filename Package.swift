// swift-tools-version:5.3
import PackageDescription

let packageVersion = "0.32.1"

let package = Package(
  name: "PayPalCheckout",
  platforms: [
    .iOS(.v11)
  ],
  products: [
    .library(
      name: "PayPalCheckout",
      targets: ["PayPalCheckout"]
    ),
    .library(
      name: "CardinalMobile",
      targets: ["CardinalMobile"]
    )
  ],
  targets: [
    .binaryTarget(
      name: "PayPalCheckout",
      url: "https://github.com/jonathajones/PayPalCheckout/releases/download/\(packageVersion)/PayPalCheckout.xcframework.zip",
      checksum: "8e9f82f2e964a1964f1184e0d1f0fb49ab62e492b0e6d6ada63f6dd8ad74c064"
      ),
    .binaryTarget(name: "CardinalMobile", url: "https://github.com/jonathajones/PayPalCheckout/releases/download/\(packageVersion)/CardinalMobile.xcframework.zip", checksum: "898786a4aa2d819e2aaaf9a66be30fb38c34af8f672c9fdaf4f2722d7cc7e1ab")
  ],
  swiftLanguageVersions: [.v5]
)
