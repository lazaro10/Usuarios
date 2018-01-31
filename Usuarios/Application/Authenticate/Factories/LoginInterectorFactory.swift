//
//  LoginInterectorFactory.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

struct LoginInterectorFactory {
    static func make(presenter: LoginPresenter, dataManager: LoginDataManagerType) -> LoginInterector {
        return LoginInterector(presenter: presenter, dataManager: dataManager)
    }
}
