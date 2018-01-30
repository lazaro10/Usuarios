//
//  UserDataManagerType.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import CoreData
protocol UserDataManagerType {
    func loginUser(username: String, password: String, completionHandler: @escaping ((ResultData<User, DataError>) -> Void))
    func registerUser(username: String, password: String, completionHandler: @escaping ((ResultData<Bool, DataError>) -> Void))
}

