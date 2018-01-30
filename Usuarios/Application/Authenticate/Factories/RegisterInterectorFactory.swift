//
//  RegisterInterectorFactory.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

struct RegisterInterectorFactory {
    static func make(presenter: RegisterPresenter, dataManager: RegisterDataManagerType) -> RegisterInterector {
        return RegisterInterector(presenter: presenter, dataManager: dataManager)
    }
}

