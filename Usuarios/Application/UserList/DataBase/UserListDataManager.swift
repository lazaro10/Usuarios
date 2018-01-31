//
//  UserListDataManager.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import CoreData

final class UserListDataManager: UserListDataManagerType {
    
    private let entityName = "UserPersistable"
    private let context = UsuariosDataManagerFactory.make().persistentContainer.viewContext
    
    func users(completionHandler: @escaping ((ResultData<[User], ErrorType>) -> Void)) {
        let fetchRequest: NSFetchRequest<UserPersistable> = UserPersistable.fetchRequest()
        do {
            let users: [UserPersistable] = try context.fetch(fetchRequest)
            
            completionHandler(ResultData.success(users.map({
                User(username: $0.username ?? "")
            })))
            
        } catch let error {
            completionHandler(ResultData.fail(ErrorType.other(error)))
        }
    }
}

