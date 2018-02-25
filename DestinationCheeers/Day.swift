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
    
    // Initialize and create day and message label instances
    init?(dayLabel: String, messageLabel: String) {
        
        // Initialization should fail if there is no day label or if there's no message label
        guard !dayLabel.isEmpty || !messageLabel.isEmpty else {
            return nil
        }
        // Otherwise, initialize day and message labels
        self.dayLabel = dayLabel
        self.messageLabel = messageLabel
    }
}
