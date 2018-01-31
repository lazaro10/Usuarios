//
//  UserListViewControllerFactory.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import UIKit

struct UserListViewControllerFactory {
    static func make() -> UserListViewController {
        let storyboard = UIStoryboard(name: "Users", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: UserListViewController.identifier) as! UserListViewController
    }
}
