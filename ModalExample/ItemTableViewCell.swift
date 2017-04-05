//
//  ItemTableViewCell.swift
//  ModalExample
//
//  Created by Tito Albino Evangelista da Silva Junior on 05/04/17.
//  Copyright © 2017 Tito Albino Evangelista da Silva Junior. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {
    
    @IBOutlet weak var mTitle: UILabel!

    var entity: (index: Int, title: String)! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI() {
        self.mTitle.text = entity.title
    }

}
