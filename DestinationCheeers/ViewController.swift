//
//  ViewController.swift
//  DestinationCheeers
//
//  Created by Tim Evoy on 2018-02-24.
//  Copyright © 2018 Tim Evoy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
        
    @IBOutlet weak var showDealsBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showDealsBtn.layer.cornerRadius = 4
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

