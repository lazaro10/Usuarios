//
//  LoginDataManager.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import CoreData
import Foundation

struct LoginDataManager: LoginDataManagerType {
    
    private let entityName = "UserPersistable"
    private let context = UsuariosDataManagerFactory.make().persistentContainer.viewContext
    
    func login(username: String, password: String, completionHandler: @escaping ((ResultData<String, ErrorType>) -> Void)) {
        let fetchRequest: NSFetchRequest<UserPersistable> = UserPersistable.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "username == %@", username)
        
        do {
            let users: [UserPersistable] = try context.fetch(fetchRequest)
            if let first = users.first {
                if first.password != password {
                    completionHandler(ResultData.fail(ErrorType.invalidPassword))
                } else {
                    completionHandler(ResultData.success(first.username!))
                }
                
            } else {
                completionHandler(ResultData.fail(ErrorType.userNotFound))
            }
        } catch let error {
            completionHandler(ResultData.fail(ErrorType.other(error)))
        }
    }
}
