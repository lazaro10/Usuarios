//
//  DataError.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

enum DataError: Error {
    case nonExistentUser
    case invalidPassword
    case incorrectUsername
    case incorrectPassword
    case existingUser
    case other(Error?)
    
    var localizedDescription: String {
        switch self {
        case .nonExistentUser:
            return String.DataError.nonExistentUser
        case .invalidPassword:
            return String.DataError.invalidPassword
        case .incorrectPassword:
            return String.DataError.incorrectPassword
        case .incorrectUsername:
            return String.DataError.incorrectUsername
        case .existingUser:
            return String.DataError.existingUser
        case .other(let error) :
            return (error?.localizedDescription)!
        }
    }
}
