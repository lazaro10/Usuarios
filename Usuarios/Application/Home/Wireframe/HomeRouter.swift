//
//  HomeRouter.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import UIKit

final class HomeRouter: HomeRouterInput {
    
    private let homeViewController: HomeViewController
    
    init(view: HomeViewController) {
        self.homeViewController = view
    }
    
    
    func loggout() {
        homeViewController.dismiss(animated: true, completion: nil)
    }
    
    func presentItemHome(itemHome: ItemHomeType) {
        switch itemHome {
        case .draw:
           presentDraw()
        case .users:
            presentUsers()
        }
    }
    
    private func presentDraw() {
        homeViewController.navigationController?.pushViewController(DrawViewControllerFactory.make(), animated: true)
    }
    
    private func presentUsers() {
        homeViewController.navigationController?.pushViewController(UserListViewControllerFactory.make(), animated: true)
    }
}
