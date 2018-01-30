//
//  RegisterInterector.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

struct RegisterInterector {
    private(set) var presenter: RegisterPresenter
    private let dataManager: RegisterDataManagerType
    
    init(presenter: RegisterPresenter, dataManager: RegisterDataManagerType) {
        self.presenter = presenter
        self.dataManager = dataManager
    }
    
    func register(username: String, password: String, confirmPassword: String) {
        
        if !ValidateString.isValidSize(string: username) ||
            !ValidateString.isValidSize(string: password) ||
            !ValidateString.isValidSize(string: confirmPassword) {
            self.presenter.present(error: ErrorType.invalidCharacter)
            return
        }
        
        if validatePassword(firstPassword: password, secondPassword: confirmPassword) {
            dataManager.register(username: username, password: password, completionHandler: { result in
                switch result {
                case .success( _):
                    self.presenter.present()
                case .fail(let error):
                    self.presenter.present(error: error)
                }
            })
        } else {
            self.presenter.present(error: ErrorType.invalidPassword)
        }
    }
    
    private func validatePassword(firstPassword: String, secondPassword: String) -> Bool {
        return firstPassword == secondPassword
    }

    
}
