//
//  LoginViewControllerFactory.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import UIKit
struct LoginViewControllerFactory {
    
    static func make() -> LoginViewController {
        let storyboard = UIStoryboard(name: "Authenticate", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: LoginViewController.identifier) as! LoginViewController
    }
}

