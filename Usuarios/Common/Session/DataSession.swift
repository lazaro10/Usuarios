//
//  DataSession.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 31/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

class DataSession {

    static func saveUsername(username: String) {
        let defaults = UserDefaults.standard
        defaults.set(username, forKey: String.Defaults.currentUser)
    }
    
    static func removeUsername() {
        let defaults = UserDefaults.standard
        defaults.removeObject(forKey: String.Defaults.currentUser)
    }

    static func getUsername() -> String? {
        let defaults = UserDefaults.standard
        return defaults.string(forKey: String.Defaults.currentUser)        
    }
}
