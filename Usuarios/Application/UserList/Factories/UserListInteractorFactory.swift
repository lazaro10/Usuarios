//
//  UserListInteractorFactory.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

struct UserListInteractorFactory {
    static func make(presenter: UserListPresenter, dataManager: UserListDataManagerType) -> UserListInteractor {
        return UserListInteractor(presenter: presenter, dataManager: dataManager)
    }
}
