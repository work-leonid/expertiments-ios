//
//  Translation.swift
//  LocalisationStandart
//
//  Created by Leonid Nazarov on 21.04.2021.
//
import SwiftUI

protocol LocalizableDelegate {
    var rawValue: String { get }
    var table: String? { get } //is the name of table where to search specific key
    var localized: String { get } //returns a value by rawValue located in the table
}

extension LocalizableDelegate {
    
//returns a localized value by specified key located in the specified table
    var localized: String {
        return Bundle.main.localizedString(forKey: rawValue, value: nil, table: table)
    }

    var table: String? {
        return nil
    }
    
}



enum FirstPage: String, LocalizableDelegate {
    case title = "mySampleTitle"
    case text = "mySampleText"
    case interpolationString = "my Sample Interpolation Text %@."
}

enum FirstPageString: LocalizedStringKey {
    case title = "mySampleTitle"
    
    var localized: LocalizedStringKey {
        return rawValue
    }
}

enum Localization {
    
    enum FirstPage: LocalizedStringKey {
        case title = "mySampleTitle"
        case interpolation = "myNameIs %@"
    
        var localized: LocalizedStringKey {
            return rawValue
        }
    }
}

extension LocalizedStringKey.StringInterpolation {
    mutating func appendInterpolation(localized key: String, _ args: CVarArg...) {
        let localized = String(format: NSLocalizedString(key, comment: ""), arguments: args)
        appendLiteral(localized)
    }
}
