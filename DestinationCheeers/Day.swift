//
//  Day.swift
//  DestinationCheeers
//
//  Created by Tim Evoy on 2018-02-24.
//  Copyright © 2018 Tim Evoy. All rights reserved.
//


/*
 * This class is the model for all of the days of the week objects,
 * a user selects a day from the list and is taken to a different view (screen)
 * to display that current day's happy hour deals
 */
import UIKit

class Day: NSObject {
    
    // MARK: Properties - day object attributes
    var dayLabel: String?
    var messageLabel: String?
    
    // MARK: Properties - day detail object attributes
    var restaurantLabel: String?
    var locationLabel: String?
    var hoursLabel: String?
    var detailsLabel: String?
    
    // Initialize day and day detail objects
    init(dayLabel: String, messageLabel: String, restaurantLabel: String,
         locationLabel: String, hoursLabel: String, detailsLabel: String) {
        self.dayLabel = dayLabel.capitalized
        self.messageLabel = messageLabel.capitalized
        self.restaurantLabel = restaurantLabel.capitalized
        self.locationLabel = locationLabel
        self.hoursLabel = hoursLabel
        self.detailsLabel = detailsLabel.capitalized
    }
} // End of Day class
