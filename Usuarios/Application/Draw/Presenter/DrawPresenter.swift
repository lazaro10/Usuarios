//
//  DrawPresenter.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 31/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//


import Foundation

final class DrawPresenter {
    private let onSuccess: (Drawing) -> Void
    
    init(onSuccess: @escaping (Drawing) -> Void) {
        self.onSuccess = onSuccess
    }
    
    func success(drawing: Drawing) {
        onSuccess(drawing)
    }
    
}