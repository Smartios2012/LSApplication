//
//  ViewController.swift
//  LSApplication
//
//  Created by Mister on 16/5/16.
//  Copyright © 2016年 aimobier. All rights reserved.
//

import UIKit
import Pods_LSApplication

class ViewController: UIViewController {

    private var workspace:LSApplicationWorkspace!
    
    private var appInfoArray = [AppInfo]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        workspace = LSApplicationWorkspace.defaultWorkspace() as! LSApplicationWorkspace
        
        let allApplications = workspace.allApplications()
        
        super.viewDidLoad()
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

