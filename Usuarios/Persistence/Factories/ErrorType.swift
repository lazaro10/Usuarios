//
//  ErrorType.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

enum ErrorType: Error {
    case userNotFound
    case invalidCharacter
    case passwordsNotMatch
    case invalidUser
    case invalidPassword
    case usernameRegistered
    case other(Error?)
    
    var localizedDescription: String {
        switch self {
        case .userNotFound:
            return String.ErrorType.userNotFound
        case .invalidCharacter:
            return String.ErrorType.invalidCharacter
        case .passwordsNotMatch:
            return String.ErrorType.passwordsNotMatch
        case .invalidUser:
            return String.ErrorType.invalidUser
        case .invalidPassword:
            return String.ErrorType.invalidPassword
        case .usernameRegistered:
            return String.ErrorType.usernameRegistered
        case .other(let error) :
            return (error?.localizedDescription)!
        }
    }
}
