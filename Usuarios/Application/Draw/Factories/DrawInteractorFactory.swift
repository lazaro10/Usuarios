//
//  DrawInteractorFactory.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 31/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

struct DrawInteractorFactory {
    static func make(presenter: DrawPresenter, dataManager: DrawingDataManagerType) -> DrawInteractor {
        return DrawInteractor(presenter: presenter, dataManager: dataManager)
    }
}
