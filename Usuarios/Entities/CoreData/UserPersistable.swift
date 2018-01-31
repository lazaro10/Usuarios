//
//  UserPersistable.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation
import CoreData

@objc(UserPersistable)
public class UserPersistable: NSManagedObject {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<UserPersistable> {
        return NSFetchRequest<UserPersistable>(entityName: "UserPersistable")
    }
    
    @NSManaged public var username: String?
    @NSManaged public var password: String?
}
