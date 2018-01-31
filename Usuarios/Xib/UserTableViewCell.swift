//
//  UserTableViewCell.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet weak var userLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    fileprivate var user: User? {
        didSet {
            guard let user = user else {
                return
            }
            userLabel.text = user.username
        }
    }
    
}

extension UserTableViewCell: ViewCellHandler {
    typealias Item = User
    var data: User? {
        get {
            return user
        }
        set {
            user = newValue
        }
    }
}
