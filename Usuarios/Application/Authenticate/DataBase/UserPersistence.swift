//
//  UserPersistence.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import CoreData
import Foundation

struct UserPersistence: UserDataManagerType {
    
    private let entityName = "UserPersistable"
    private let context = UsuariosDataManagerFactory.make().persistentContainer.viewContext
    
    func loginUser(username: String, password: String, completionHandler: @escaping ((ResultData<User, DataError>) -> Void)) {
        let fetchRequest: NSFetchRequest<UserPersistable> = UserPersistable.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "username == %@", username)
        
        do {
            let users: [UserPersistable] = try context.fetch(fetchRequest)
            if let first = users.first {
                if first.password != password {
                    completionHandler(ResultData.fail(DataError.invalidPassword))
                } else {
                    completionHandler(ResultData.success(User(username: first.username!)))
                }
            } else {
                completionHandler(ResultData.fail(DataError.nonExistentUser))
            }
        } catch let error {
            completionHandler(ResultData.fail(DataError.other(error)))
        }
    }
    
    func registerUser(username: String, password: String, completionHandler: @escaping ((ResultData<Bool, DataError>) -> Void)) {
        let entity = NSEntityDescription.entity(forEntityName: entityName, in: context)!
        let user = UserPersistable(entity: entity, insertInto: context)
        
        user.username = username
        user.password = password
        
        do {
            try context.save()
            completionHandler(ResultData.success(true))
        } catch let error {
            if (error as NSError).code == 133021 {
                completionHandler(ResultData.fail(DataError.existingUser))
            } else {
                completionHandler(ResultData.fail(DataError.other(error)))
            }
        }
    }
}
