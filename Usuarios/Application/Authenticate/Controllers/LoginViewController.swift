//
//  LoginViewController.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    private lazy var interector = LoginInterectorFactory.make(presenter: LoginPresenterFactory.make(onSuccess: { user in
        LoginRouterFactory.make(view: self).presentHome(user:user)
    }, onError: { error in
        LoginRouterFactory.make(view: self).presentError(error: error)
    }), dataManager: LoginDataManagerFactory.make())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        usernameTextField.text = ""
        passwordTextField.text = ""
    }

    @IBAction func loginAction(_ sender: Any) {
        interector.login(username: usernameTextField.text ?? "", password: passwordTextField.text ?? "")
    }
    

}
