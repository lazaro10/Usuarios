//
//  HomeViewController.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    private var dataSource: TableDataSource<HomeTableViewCell, ItemHomeType>!
    
    private var items: [ItemHomeType] = [] {
        didSet {
            setDataSource(items: items)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTable()
        items = [ItemHomeType.draw, ItemHomeType.users]
    }
    
    @IBAction func loggoutAction(_ sender: Any) {
        HomeRouterFactory.make(view: self).loggout()
    }
    
    private func configureTable() {
        tableView.register(UINib(nibName: HomeTableViewCell.nibName, bundle: nil), forCellReuseIdentifier: HomeTableViewCell.identifier)
    }
    
    private func setDataSource(items: [ItemHomeType]) {
        DispatchQueue.main.async {
            self.dataSource = TableDataSource(items: items)
            self.tableView.dataSource = self.dataSource
            self.tableView.delegate = self
            self.tableView.reloadData()
        }
    }    
}

extension HomeViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        HomeRouterFactory.make(view: self).presentItemHome(itemHome: items[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: false)
    }
}

