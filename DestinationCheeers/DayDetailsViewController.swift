//
//  DayDetailsViewController.swift
//  DestinationCheeers
//
//  Created by Tim Evoy on 2018-03-02.
//  Copyright © 2018 Tim Evoy. All rights reserved.
//

/*
 * This day details view controller class displays the full details of the happy hour day.
 */
import UIKit

class DayDetailsViewController: UIViewController {
    
    // MARK: Properties - day details screen labels
    @IBOutlet weak var dayDetailLabel: UILabel!
    @IBOutlet weak var restaurantLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    var day: Day?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dayDetailLabel.text = day?.dayLabel
        infoLabel.text = day?.messageLabel
        restaurantLabel.text = day?.restaurantLabel
        locationLabel.text = day?.locationLabel
        hoursLabel.text = day?.hoursLabel
        detailsLabel.text = day?.detailsLabel
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
} // End DayDetailsViewController class
