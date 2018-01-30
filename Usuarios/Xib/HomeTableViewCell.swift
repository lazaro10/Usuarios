//
//  HomeTableViewCell.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell, Identifiable {

    @IBOutlet weak var itemLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    fileprivate var itemHome: ItemHomeType? {
        didSet {
            guard let itemHome = itemHome else {
                return
            }
            itemLabel.text = itemHome.localizedDescription
        }
    }
}

extension HomeTableViewCell: ViewCellHandler {
    typealias Item = ItemHomeType
    var data: ItemHomeType? {
        get {
            return itemHome
        }
        set {
            itemHome = newValue
        }
    }
}

