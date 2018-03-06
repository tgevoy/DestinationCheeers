//
//  DealViewController.swift
//  DestinationCheeers
//
//  Created by Tim Evoy on 2018-02-25.
//  Copyright © 2018 Tim Evoy. All rights reserved.
//

import UIKit

class DealViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var restaurantLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    var deal: Deal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        restaurantLabel.text = deal?.restaurant?.capitalized
        locationLabel.text = deal?.location?.capitalized
        hoursLabel.text = deal?.hours?.capitalized
        priceLabel.text = deal?.price?.capitalized
        infoLabel.text = deal?.info?.capitalized
        imageView.image = deal?.image
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
