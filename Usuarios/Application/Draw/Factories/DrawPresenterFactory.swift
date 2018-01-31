//
//  DrawPresenterFactory.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 31/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

struct DrawPresenterFactory {
    static func make(onSuccess: @escaping (Drawing) -> Void) -> DrawPresenter {
        return DrawPresenter(onSuccess: onSuccess)
    }
}
