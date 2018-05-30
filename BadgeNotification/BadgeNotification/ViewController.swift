//
//  ViewController.swift
//  BadgeNotification
//
//  Created by agile on 5/30/18.
//  Copyright © 2018 agile. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    
    var index = 0

    override func viewDidLoad() {
        super.viewDidLoad()
     
    }

    @IBAction func btn(sender: UIButton){
        var a = index + 1
        index = a
        let application = UIApplication.shared
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .badge, .sound]) { (sucess, error) in
            print("Sucess",a)
        }
        application.applicationIconBadgeNumber = a
        application.registerForRemoteNotifications()
    }

}

