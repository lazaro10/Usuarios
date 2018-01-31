//
//  ViewCellHandler.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

protocol ViewCellHandler: Identifiable {
    associatedtype Item
    var data: Item? { get set }
}

