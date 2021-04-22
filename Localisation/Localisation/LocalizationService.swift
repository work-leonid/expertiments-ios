//
//  LocalizationService.swift
//  Localisation
//
//  Created by Leonid Nazarov on 21.04.2021.
//

import Foundation

class LocalizationService {
    
    static let shared = LocalizationService()
    static let changedLanguage = Notification.Name("changedLanguage")
    
    private init() {}
    
    var language: Language {
        get {
            guard let languageString = UserDefaults.standard.string(forKey: "language") else {
                return .english
            }
            return Language(rawValue: languageString) ?? .english
        } set {
            if newValue != language {
                UserDefaults.standard.setValue(newValue.rawValue, forKey: "language")
                NotificationCenter.default.post(name: LocalizationService.changedLanguage, object: nil)
            }
        }
    }
}
