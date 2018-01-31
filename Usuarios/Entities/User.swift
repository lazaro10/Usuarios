//
//  User.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

class User: NSObject, NSCoding {
    var username: String = ""
    
    init(username: String) {
        self.username = username
    }
    
    required init(coder decoder: NSCoder)  {
        self.username = decoder.decodeObject(forKey: "username") as! String
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.username, forKey: "username")
    }
    
//    func getUserPersistable() -> UserPersistable {
//    //    UserPersistable.
//    }
}
