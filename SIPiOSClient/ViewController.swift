//
//  ViewController.swift
//  SIPiOSClient
//
//  Created by SungWoo Back on 2020/10/29.
//

import UIKit

class ViewController: UIViewController {
    private var io:iOConnector?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.io = iOConnector(IOConfigurator.defaultConfig())
        self.io?.conenct()
        // Do any additional setup after loading the view.
    }


}

