//
//  DrawInteractor.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 31/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import UIKit

struct DrawInteractor {
    private var presenter: DrawPresenter
    private let dataManager: DrawingDataManagerType
    
    init(presenter: DrawPresenter, dataManager: DrawingDataManagerType) {
        self.presenter = presenter
        self.dataManager = dataManager
    }
    
    func getDrawing() {
        dataManager.fetch(username: DataSession.getUsername()!) { result in
            switch result {
            case .success(let drawing):
                self.presenter.success(drawing: drawing)
            default: break
            }
        }
    }
    
    func setDrawing(image: UIImage) {
        dataManager.save(with: DataSession.getUsername()!, image: image)
    }
}
