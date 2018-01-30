//
//  SessionNavigationViewControllerRouterFactory.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import UIKit

struct SessionNavigationViewControllerRouterFactory {
    static func make(window: UIWindow) -> SessionRouter {
        return SessionNavigationViewControllerRouter(window: window)
    }
}

