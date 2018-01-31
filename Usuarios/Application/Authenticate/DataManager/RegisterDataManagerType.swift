//
//  RegisterDataManagerType.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

protocol RegisterDataManagerType {
    func register(username: String, password: String, completionHandler: @escaping ((ResultData<Bool, ErrorType>) -> Void))
}
