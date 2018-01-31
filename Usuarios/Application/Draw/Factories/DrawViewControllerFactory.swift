//
//  DrawViewControllerFactory.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import UIKit

struct DrawViewControllerFactory {
    static func make() -> DrawViewController {
        let storyboard = UIStoryboard(name: "Draw", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: DrawViewController.identifier) as! DrawViewController
    }
}
