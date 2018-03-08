//
//  ViewController.swift
//  DestinationCheeers
//
//  Created by Tim Evoy on 2018-02-24.
//  Copyright © 2018 Tim Evoy. All rights reserved.
//

/*
 * This view controller class displays the objects on the main screen
 */
import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties - home screen buttons
    @IBOutlet weak var showDealsBtn: UIButton!
    @IBOutlet weak var informationBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Style the home screen buttons
        showDealsBtn.layer.cornerRadius = 4
        informationBtn.layer.cornerRadius = 4
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
} // End ViewController class

