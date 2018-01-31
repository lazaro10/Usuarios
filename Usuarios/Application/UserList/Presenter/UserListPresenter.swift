//
//  UserListPresenter.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

final class UserListPresenter {
    private let onSuccess: ([User]) -> Void
    
    init(onSuccess: @escaping ([User]) -> Void) {
        self.onSuccess = onSuccess
    }
    
    func present(users: [User]) {
        onSuccess(users)
    }
}
