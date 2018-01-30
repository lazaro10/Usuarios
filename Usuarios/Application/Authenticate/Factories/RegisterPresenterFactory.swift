//
//  RegisterPresenterFactory.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

struct RegisterPresenterFactory {
    static func make(onSuccess: @escaping () -> Void, onError: @escaping (ErrorType) -> Void) -> RegisterPresenter {
        return RegisterPresenter(onSuccess: onSuccess, onError: onError)
    }
}
