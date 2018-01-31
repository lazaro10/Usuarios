//
//  UserListDataManagerFactory.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

struct UserListDataManagerFactory {
    static func make() -> UserListDataManagerType {
        return UserListDataManager()
    }
}
