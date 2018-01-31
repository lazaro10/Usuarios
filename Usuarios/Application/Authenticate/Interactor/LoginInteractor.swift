//
//  LoginInteractor.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

struct LoginInteractor {
    
    private var presenter: LoginPresenter
    private let dataManager: LoginDataManagerType
    
    init(presenter: LoginPresenter, dataManager: LoginDataManagerType) {
        self.presenter = presenter
        self.dataManager = dataManager
    }
    
    func login(username: String, password: String) {
        
        if !ValidateString.isValidSize(string: username) ||
            !ValidateString.isValidSize(string: password) {
            self.presenter.present(error: ErrorType.invalidCharacter)
            return
        }
        
        dataManager.login(username: username, password: password) { result in
            switch result {
            case .success( let username):
                DataSession.saveUsername(username: username)
                self.presenter.success()
            case .fail(let error):
                self.presenter.present(error: error)
            }
        }
    }
}
