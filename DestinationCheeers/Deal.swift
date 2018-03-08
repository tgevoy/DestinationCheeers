//
//  Deal.swift
//  DestinationCheeers
//
//  Created by Tim Evoy on 2018-02-25.
//  Copyright © 2018 Tim Evoy. All rights reserved.
//

/*
 * This class is the model for all of the deals of the week objects,
 * a user selects a day from the list and is taken to a different view (screen)
 * to display that current day's happy hour deal details.
 */
import UIKit

class Deal: NSObject {
    
    // MARK: Properties - deal object attributes
    var dayDetailLabel: String?
    var restaurantLabel: String?
    var addressLabel: String?
    var hoursLabel: String?
    var detailsLabel: String?
    var infoLabel: String?
  
    
    // Initialize and create day deal instances
    init?(dayDetailLabel: String, restaurantLabel: String, addressLabel: String, hoursLabel: String, detailsLabel: String, infoLabel: String) {
        
        // Initialization should fail if there is no day detail, restaurant, location, hours, info, or details labels.
        // Return nil if initialization failed
        guard !dayDetailLabel.isEmpty || !restaurantLabel.isEmpty ||
              !addressLabel.isEmpty || !hoursLabel.isEmpty ||
              !detailsLabel.isEmpty || infoLabel.isEmpty else {
            return nil
        }
        
        // Initialize deal object and their types
        self.dayDetailLabel = dayDetailLabel.capitalized
        self.restaurantLabel = restaurantLabel.capitalized
        self.addressLabel = addressLabel.capitalized
        self.hoursLabel = hoursLabel
        self.detailsLabel = detailsLabel
        self.infoLabel = infoLabel.capitalized
    }
} // End of Deal class

