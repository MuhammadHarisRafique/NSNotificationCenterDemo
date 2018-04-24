//
//  ViewController.swift
//  NSNotification
//
//  Created by Higher Visibility on 24/04/2018.
//  Copyright © 2018 Higher Visibility. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let object:[Any] = [1,"2","5"]
        NotificationCenter.default.addObserver(self, selector: #selector(self.handleNotificationOK(notification:)), name: NSNotification.Name("Test"), object: object)
    
    }

    override func viewWillAppear(_ animated: Bool) {
        
        let array:[Any] = ["ksdlfjsodj",1,"34",4.600]
        let info:[AnyHashable:Any] = [
            
            "message":"I love you",
            "body":"Because you are so beautiful"
            
        ]
       NotificationCenter.default.post(name: NSNotification.Name("Test"), object: array, userInfo: info)
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        
    }

    @objc func handleNotificationOK(notification:NSNotification){
        
        let info = notification.userInfo
        print(info!["body"]!)
        print(info!["message"]!)
        let object = notification.object as! [Any]
        
        print(object)
        print(notification.observationInfo)
    }
    
}

