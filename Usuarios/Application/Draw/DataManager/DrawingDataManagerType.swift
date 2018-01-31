//
//  DrawingDataManagerType.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 31/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import UIKit

protocol DrawingDataManagerType {
    func save(with username: String, image: UIImage)
    func fetch(username: String, completionHandler: @escaping ((ResultData<Drawing, ErrorType>) -> Void))
}
