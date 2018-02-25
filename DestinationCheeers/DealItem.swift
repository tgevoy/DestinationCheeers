//
//  DealItem.swift
//  DestinationCheeers
//
//  Created by Tim Evoy on 2018-02-24.
//  Copyright © 2018 Tim Evoy. All rights reserved.
//

import UIKit

/*
 * This class is the model for all of the days of the week objects,
 * a user selects a day from the list and is taken to a different view (screen) to display
 * that current day's happy hour deals
 */
class DealItem: NSObject {
    
    // Represents days of the week
    var dayLabel: String
    
    // Initialize day objects
    init?(dayLabel: String) {
        self.dayLabel = dayLabel
    }
}
