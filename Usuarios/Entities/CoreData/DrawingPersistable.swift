//
//  DrawingPersistable.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 31/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//
//

import Foundation
import CoreData


public class DrawingPersistable: NSManagedObject {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<DrawingPersistable> {
        return NSFetchRequest<DrawingPersistable>(entityName: "DrawingPersistable")
    }
    
    @NSManaged public var drawing: NSData?
    @NSManaged public var user: UserPersistable?
}
