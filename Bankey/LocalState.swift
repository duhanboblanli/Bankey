//
//  LocalState.swift
//  Bankey
//
//  Created by Duhan Boblanlı on 28.08.2023.
//

import Foundation

// Diske Onboard yapıldı mı bilgisini kayıt etme
// Böylece app'ten çıkılıp girince bu statedeki değişken bilgileri son haliyle tutulur, sıfırlanmaz
public class LocalState {
    
    private enum Keys: String {
        case hasOnboarded
    }
    
    public static var hasOnboarded: Bool {
        get {
            return UserDefaults.standard.bool(forKey: Keys.hasOnboarded.rawValue)
        }
        set(newValue) {
            UserDefaults.standard.set(newValue, forKey: Keys.hasOnboarded.rawValue)
            UserDefaults.standard.synchronize()
        }
    }
}
