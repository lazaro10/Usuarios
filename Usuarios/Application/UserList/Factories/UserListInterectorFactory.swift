//
//  UserListInterectorFactory.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

struct UserListInterectorFactory {
    static func make(presenter: UserListPresenter, dataManager: UserListDataManagerType) -> UserListInterector {
        return UserListInterector(presenter: presenter, dataManager: dataManager)
    }
}
