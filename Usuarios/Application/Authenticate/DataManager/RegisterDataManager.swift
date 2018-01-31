//
//  RegisterDataManager.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation
import CoreData

struct RegisterDataManager: RegisterDataManagerType {
    
    private let entityName = "UserPersistable"
    private let context = UsuariosDataManagerFactory.make().persistentContainer.viewContext
    
    func register(username: String, password: String, completionHandler: @escaping ((ResultData<Bool, ErrorType>) -> Void)) {
        let entity = NSEntityDescription.entity(forEntityName: entityName, in: context)!
        let user = UserPersistable(entity: entity, insertInto: context)
        
        user.username = username
        user.password = password
        
        do {
            try context.save()
            completionHandler(ResultData.success(true))
        } catch let error {
            if (error as NSError).code == 133021 {
                completionHandler(ResultData.fail(ErrorType.usernameRegistered))
            } else {
                completionHandler(ResultData.fail(ErrorType.other(error)))
            }
        }
    }
}
