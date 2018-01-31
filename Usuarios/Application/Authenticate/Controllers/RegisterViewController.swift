//
//  RegisterViewController.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    
    private lazy var interector = RegisterInterectorFactory.make(presenter: RegisterPresenterFactory.make(onSuccess: {
        RegisterRouterFactory.make(view: self).presentSuccess(message: "User saved!")
    }, onError: { error in
        RegisterRouterFactory.make(view: self).presentError(error: error)
    }), dataManager: RegisterDataManagerFactory.make())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }
    
    
    @IBAction func regiterAction(_ sender: Any) {
        interector.register(username: usernameTextField.text ?? "", password: passwordTextField.text ?? "", confirmPassword: confirmPasswordTextField.text ?? "")
    }
    
}
