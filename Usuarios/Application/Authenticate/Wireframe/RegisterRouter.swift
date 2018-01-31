//
//  RegisterRouter.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import UIKit

final class RegisterRouter: RegisterRouterInput {
    
    private let registerViewController: RegisterViewController
    
    init(view: RegisterViewController) {
        self.registerViewController = view
    }
    
    func presentSuccess(message: String) {
        registerViewController.present(AlertManager.showSuccess(message: message, completion: {
            self.registerViewController.dismiss(animated: true, completion: nil)
        }), animated: true, completion: nil)
    }
    
    func presentError(error: ErrorType) {
        registerViewController.present(AlertManager.showError(message: error.localizedDescription), animated: true, completion: nil)
    }

}
