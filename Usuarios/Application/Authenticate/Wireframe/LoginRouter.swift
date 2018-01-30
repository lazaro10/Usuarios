//
//  LoginRouter.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import UIKit

final class LoginRouter: LoginRouterInput {
    
    private let loginViewController: LoginViewController
    
    init(view: LoginViewController) {
        self.loginViewController = view
    }
    
    func presentHome(user: User) {
        let storyboard = UIStoryboard(name: "Home", bundle: nil)
        let navigation = storyboard.instantiateViewController(withIdentifier: "HomeNavigationController") as! HomeNavigationController
        navigation.inject(user)
        loginViewController.present(navigation, animated: true, completion: nil)
    }
    
    func presentError(error: ErrorType) {
        loginViewController.present(AlertManager.showError(message: error.localizedDescription), animated: true, completion: nil)
    }
}
