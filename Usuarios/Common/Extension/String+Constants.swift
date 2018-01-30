//
//  String+Constants.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

extension String {
    
    struct ErrorType {
        static let userNotFound = "Your username was not found!"
        static let invalidCharacter = "Fields must be at least 4 characters!"
        static let passwordsNotMatch = "Passwords don't match!"
        static let invalidUser = "Your username is invalid or does not exist!"
        static let invalidPassword = "Invalid password"
        static let usernameRegistered = "This name has already been used by another user!"
        static let other = "Error"
    }

    struct ItemHome {
        static let draw = "Draw Something Awesome"
        static let users = "List Users"
    }
}
