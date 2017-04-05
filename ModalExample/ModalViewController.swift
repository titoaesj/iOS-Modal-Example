//
//  ViewController.swift
//  ModalExample
//
//  Created by Tito Albino Evangelista da Silva Junior on 05/04/17.
//  Copyright © 2017 Tito Albino Evangelista da Silva Junior. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var mListTableView: UITableView!
    
    /*:
        Dados para popular o UITableView
     */
    let source : [(index: Int, title: String)] = [
        (index: 0, title: "Modal com UIViewController"),
         (index: 1, title: "Modal com UIView")]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mListTableView.dataSource = self
        self.mListTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return source.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ItemTableViewCell
        
        cell.entity = source[indexPath.row]
        
        return cell
    }

}

