//
//  HomeRouterFactory.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import Foundation

struct HomeRouterFactory {
    static func make(view: HomeViewController) -> HomeRouterInput {
        return HomeRouter(view: view)
    }
}
