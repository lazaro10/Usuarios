//
//  DrawingDataManager.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 31/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import UIKit
import CoreData

struct DrawingDataManager: DrawingDataManagerType {
    
    private let entityName = "DrawingPersistable"
    private let context = UsuariosDataManagerFactory.make().persistentContainer.viewContext
    
    
    func save(with username: String, image: UIImage) {
        let entity = NSEntityDescription.entity(forEntityName: entityName, in: context)!
        let drawing = DrawingPersistable(entity: entity, insertInto: context)
        drawing.drawing = image.toData(compressionRatio: 1.0)! as NSData
        drawing.user = getCurrentUser(username: username)
        
        do {
            try context.save()
        } catch {}
    }
    
    func fetch(username: String, completionHandler: @escaping ((ResultData<Drawing, ErrorType>) -> Void)) {
        let fetchRequest: NSFetchRequest<DrawingPersistable> = DrawingPersistable.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "user == %@", getCurrentUser(username: username)!)
        do {
            let drawing: [DrawingPersistable] = try context.fetch(fetchRequest)
            guard let last = drawing.last else { return }
            let drawingImage = UIImage(data: (last.drawing as Data?)!, scale: 1.0)
            completionHandler(ResultData.success(Drawing(drawing: drawingImage!)))
        } catch let error {
            completionHandler(ResultData.fail(ErrorType.other(error)))
        }
    }
    
    private func getCurrentUser(username: String) -> UserPersistable? {
        let fetchRequest: NSFetchRequest<UserPersistable> = UserPersistable.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "username == %@", username)
        do {
            let users: [UserPersistable] = try context.fetch(fetchRequest)
            if let first = users.first {
                return first
            } else {
                return nil
            }
        } catch {
            return nil
        }
    }
}
