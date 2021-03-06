// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
  import AppKit.NSImage
  internal typealias AssetColorTypeAlias = NSColor
  internal typealias Image = NSImage
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIImage
  internal typealias AssetColorTypeAlias = UIColor
  internal typealias Image = UIImage
#endif

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

@available(*, deprecated, renamed: "ImageAsset")
internal typealias AssetType = ImageAsset

internal struct ImageAsset {
  internal fileprivate(set) var name: String

  internal var image: Image {
    let bundle = Bundle(for: BundleToken.self)
    #if os(iOS) || os(tvOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(OSX)
    let image = bundle.image(forResource: name)
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else { fatalError("Unable to load image named \(name).") }
    return result
  }
}

internal struct ColorAsset {
  internal fileprivate(set) var name: String

  #if swift(>=3.2)
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, OSX 10.13, *)
  internal var color: AssetColorTypeAlias {
    return AssetColorTypeAlias(asset: self)
  }
  #endif
}

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
internal enum Asset {
  internal enum Colors {
    internal static let primary = ColorAsset(name: "Colors/Primary")
    internal static let tint = ColorAsset(name: "Colors/Tint")
  }
  internal enum Fruits {
    internal enum Exotic {
      internal static let banana = ImageAsset(name: "Fruits/Exotic/Banana")
      internal static let mango = ImageAsset(name: "Fruits/Exotic/Mango")
    }
    internal enum Round {
      internal static let apricot = ImageAsset(name: "Fruits/Round/Apricot")
      internal enum Red {
        internal static let apple = ImageAsset(name: "Fruits/Round/Apple")
        internal static let ball = ImageAsset(name: "Fruits/Round/Ball")
        internal enum Double {
          internal static let cherry = ImageAsset(name: "Fruits/Round/Double/Cherry")
        }
        internal static let tomato = ImageAsset(name: "Fruits/Round/Tomato")
      }
    }
  }

  // swiftlint:disable trailing_comma
  internal static let allColors: [ColorAsset] = [
    Colors.primary,
    Colors.tint,
  ]
  internal static let allImages: [ImageAsset] = [
    Fruits.Exotic.banana,
    Fruits.Exotic.mango,
    Fruits.Round.apricot,
    Fruits.Round.Red.apple,
    Fruits.Round.Red.ball,
    Fruits.Round.Red.Double.cherry,
    Fruits.Round.Red.tomato,
  ]
  // swiftlint:enable trailing_comma
  @available(*, deprecated, renamed: "allImages")
  internal static let allValues: [AssetType] = allImages
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

internal extension Image {
  @available(iOS 1.0, tvOS 1.0, watchOS 1.0, *)
  @available(OSX, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init!(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = Bundle(for: BundleToken.self)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(OSX) || os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

internal extension AssetColorTypeAlias {
  #if swift(>=3.2)
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, OSX 10.13, *)
  convenience init!(asset: ColorAsset) {
    let bundle = Bundle(for: BundleToken.self)
    #if os(iOS) || os(tvOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(OSX)
    self.init(named: asset.name, bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
  #endif
}

private final class BundleToken {}
