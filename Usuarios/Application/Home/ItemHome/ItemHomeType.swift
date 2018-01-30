//
//  ItemHomeType.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

enum ItemHomeType: Error {
    case draw
    case users
    var localizedDescription: String {
        switch self {
        case .draw:
            return String.ItemHome.draw
        case .users:
            return String.ItemHome.users
        }
    }
}
