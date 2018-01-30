//
//  HomeNavigationControllerFactory.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import UIKit

struct HomeNavigationControllerFactory {
    static func make() -> HomeNavigationController{
        let storyboard = UIStoryboard(name: "Home", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: "HomeNavigationController") as! HomeNavigationController
    }
}
