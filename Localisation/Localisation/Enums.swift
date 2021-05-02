//
//  File.swift
//  Localisation
//
//  Created by Leonid Nazarov on 26.04.2021.
//

import SwiftUI


protocol LocalizableDelegate {
    var rawValue: String { get }    //localize key
    var table: String? { get }
    var localized: String { get }
}
extension LocalizableDelegate {

    //returns a localized value by specified key located in the specified table
    var localized: String {
        return Bundle.main.localizedString(forKey: rawValue, value: nil, table: table)
    }

    // file name, where to find the localized key
    // by default is the Localizable.string table
    var table: String? {
        return nil
    }
}

//enum Translation: String, LocalizableDelegate {
//
//
////    static let settingsLanguage = LocalizedStringKey("settings_language")
//
//    static func name(_ name: String) -> LocalizedStringKey {
//        return LocalizedStringKey("myNameIs \(name)")
//    }
////
////    static func nameString(_ name: String) -> String {
////        return String.localizedStringWithFormat(NSLocalizedString("myNameIs %@", comment: ""), name)
////    }
//
//    case title = "settings_language_footer"
//
//
//
//}

enum Translation {
    
    
//    static let settingsLanguage = LocalizedStringKey("settings_language")
    
    static func name(_ name: String) -> LocalizedStringKey {
        return LocalizedStringKey("myNameIs \(name)")
    }
//
//    static func nameString(_ name: String) -> String {
//        return String.localizedStringWithFormat(NSLocalizedString("myNameIs %@", comment: ""), name)
//    }
    static let title = LocalizedStringKey("settings_language_footer")
//    case title = "settings_language_footer"
    
    
    
}
