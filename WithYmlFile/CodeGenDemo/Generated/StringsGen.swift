// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// swiftlint:disable explicit_type_interface identifier_name line_length nesting type_body_length type_name
internal enum L10n {

  internal enum Address {
    /// City
    internal static let city = L10n.tr("Localizable", "Address.city")
    /// State
    internal static let state = L10n.tr("Localizable", "Address.state")
    /// Street
    internal static let street = L10n.tr("Localizable", "Address.street")
  }

  internal enum Person {
    /// First name
    internal static let firstName = L10n.tr("Localizable", "Person.firstName")
    /// Last name
    internal static let lastName = L10n.tr("Localizable", "Person.lastName")
  }

  internal enum Personlist {

    internal enum Dupes {
      /// OK
      internal static let button = L10n.tr("Localizable", "PersonList.dupes.button")
      /// There are %1$d distinct phones and %2$d total.
      internal static func message(_ p1: Int, _ p2: Int) -> String {
        return L10n.tr("Localizable", "PersonList.dupes.message", p1, p2)
      }
      /// Phones
      internal static let title = L10n.tr("Localizable", "PersonList.dupes.title")
    }

    internal enum Phones {
      /// %d phones
      internal static func count(_ p1: Int) -> String {
        return L10n.tr("Localizable", "PersonList.phones.count", p1)
      }
    }
  }

  internal enum Personrecord {

    internal enum Edit {
      /// Cancel
      internal static let cancel = L10n.tr("Localizable", "PersonRecord.edit.cancel")
      /// OK
      internal static let ok = L10n.tr("Localizable", "PersonRecord.edit.ok")
      /// New Value
      internal static let title = L10n.tr("Localizable", "PersonRecord.edit.title")
    }

    internal enum Section {
      /// Address
      internal static let address = L10n.tr("Localizable", "PersonRecord.section.address")
      /// Person
      internal static let person = L10n.tr("Localizable", "PersonRecord.section.person")
      /// Phones
      internal static let phones = L10n.tr("Localizable", "PersonRecord.section.phones")
    }
  }

  internal enum Phoneeditor {

    internal enum Random {
      /// Random
      internal static let button = L10n.tr("Localizable", "PhoneEditor.random.button")
      /// My Phone
      internal static let choice0 = L10n.tr("Localizable", "PhoneEditor.random.choice0")
      /// My Awesome Phone
      internal static let choice1 = L10n.tr("Localizable", "PhoneEditor.random.choice1")
      /// iPhone
      internal static let choice2 = L10n.tr("Localizable", "PhoneEditor.random.choice2")
      /// Precious
      internal static let choice3 = L10n.tr("Localizable", "PhoneEditor.random.choice3")
      /// %1$@ #%2$d
      internal static func format(_ p1: String, _ p2: Int) -> String {
        return L10n.tr("Localizable", "PhoneEditor.random.format", p1, p2)
      }
    }

    internal enum Title {
      /// Choisissez un modèle
      internal static let model = L10n.tr("Localizable", "PhoneEditor.title.model")
      /// Nom du téléphone
      internal static let name = L10n.tr("Localizable", "PhoneEditor.title.name")
    }
  }
}
// swiftlint:enable explicit_type_interface identifier_name line_length nesting type_body_length type_name

extension L10n {
  fileprivate static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = NSLocalizedString(key, tableName: table, bundle: Bundle(for: BundleToken.self), comment: "")
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

private final class BundleToken {}
