//
//  ModalViewController.swift
//  ModalExample
//
//  Created by Tito Albino Evangelista da Silva Junior on 05/04/17.
//  Copyright © 2017 Tito Albino Evangelista da Silva Junior. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {
    
    let notificationName = Notification.Name("notification_modal_close")

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func cancelModalAction(_ sender: UIButton) {
        NotificationCenter.default.post(name: notificationName, object: nil)
        dismiss(animated: true, completion: nil)
    }
    
}
