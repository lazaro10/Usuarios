//
//  LoginPresenterFactory.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

struct LoginPresenterFactory {
    static func make(onSuccess: @escaping (User) -> Void, onError: @escaping (ErrorType) -> Void) -> LoginPresenter {
        return LoginPresenter(onSuccess: onSuccess, onError: onError)
    }
}
