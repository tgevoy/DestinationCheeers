//
//  DealDetailsViewController.swift
//  DestinationCheeers
//
//  Created by Tim Evoy on 2018-02-25.
//  Copyright © 2018 Tim Evoy. All rights reserved.
//

import UIKit

class DealDetailsViewController: UIViewController {
    
    // MARK: Deal Details Object Properties
    @IBOutlet weak var dealImage: UIImageView!
    @IBOutlet weak var restaurantName: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var hours: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var info: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
