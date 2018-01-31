//
//  LoginInteractorFactory.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

struct LoginInteractorFactory {
    static func make(presenter: LoginPresenter, dataManager: LoginDataManagerType) -> LoginInteractor {
        return LoginInteractor(presenter: presenter, dataManager: dataManager)
    }
}
