//
//  ViewController.swift
//  ModalExample
//
//  Created by Tito Albino Evangelista da Silva Junior on 05/04/17.
//  Copyright © 2017 Tito Albino Evangelista da Silva Junior. All rights reserved.
//

import UIKit

class viewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var mListTableView: UITableView!
    @IBOutlet weak var mMaskModal: UIView!
    
    let notificationName = Notification.Name("notification_modal_close")
    
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
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.removeMaskModal), name: notificationName, object: nil)
    }
    
    func removeMaskModal() {
        self.mMaskModal.isHidden = true
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: notificationName, object: nil);
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return source.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ItemTableViewCell
        cell.entity = source[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.mMaskModal.isHidden = false
            self.performSegue(withIdentifier: "segueToModal", sender: nil)
        case 1:
            print("chama o segundo")
        default:
            print("defaulter")
        }
    }
    
}

