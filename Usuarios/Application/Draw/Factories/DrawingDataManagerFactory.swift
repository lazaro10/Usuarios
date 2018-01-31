//
//  DrawingDataManagerFactory.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 31/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

struct DrawingDataManagerFactory {
    static func make() -> DrawingDataManagerType {
        return DrawingDataManager()
    }
}

