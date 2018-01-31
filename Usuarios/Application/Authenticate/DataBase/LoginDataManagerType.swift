//
//  LoginDataManagerType.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

protocol LoginDataManagerType {
    func login(username: String, password: String, completionHandler: @escaping ((ResultData<User, ErrorType>) -> Void))
    
}

