//
//  UserListViewController.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import UIKit

class UserListViewController: UIViewController {

    private lazy var interactor = UserListInteractorFactory.make(presenter: UserListPresenterFactory.make(onSuccess: { users in
        self.users = users
    }), dataManager: UserListDataManagerFactory.make())
    
    private var users: [User] = [] {
        didSet {
            setDataSource(users: users)
        }
    }
    
    private var dataSource: TableDataSource<UserTableViewCell, User>!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTable()
        interactor.users()
    }
    
    private func configureTable() {
        tableView.register(UINib(nibName: UserTableViewCell.nibName, bundle: nil), forCellReuseIdentifier: UserTableViewCell.identifier)
    }
    
    private func setDataSource(users: [User]) {
        DispatchQueue.main.async {
            self.dataSource = TableDataSource(items: users)
            self.tableView.dataSource = self.dataSource
            self.tableView.reloadData()
        }
    }

}

extension UserListViewController: Identifiable { }
