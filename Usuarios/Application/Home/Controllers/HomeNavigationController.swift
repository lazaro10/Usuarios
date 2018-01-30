//
//  HomeNavigationController.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import UIKit

class HomeNavigationController: UINavigationController {
    
    fileprivate var user: User!
    override func viewDidLoad() {
        super.viewDidLoad()
        assertDependencies()
        (viewControllers.first as! HomeViewController).inject(user)
        
    }

}

extension HomeNavigationController: Injectable {
    
    func inject(_ user: User) {
        self.user = user
    }
    
    func assertDependencies() {
        assert(user != nil)
    }
}
