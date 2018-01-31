//
//  UserListInteractor.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

struct UserListInteractor {
    private var presenter: UserListPresenter
    private let dataManager: UserListDataManagerType
    
    init(presenter: UserListPresenter, dataManager: UserListDataManagerType) {
        self.presenter = presenter
        self.dataManager = dataManager
    }
    
    func users() {
        dataManager.users { result in
            switch result {
            case .success(let users):
                self.presenter.present(users: users)
            default: break 
            }
        }
    }
    
}
