//
//  Deal.swift
//  DestinationCheeers
//
//  Created by Tim Evoy on 2018-02-25.
//  Copyright © 2018 Tim Evoy. All rights reserved.
//

import UIKit

class Deal: NSObject {
    
    // MARK: Properties - deal object attributes
    var dayDetailLabel: String?
    var restaurantLabel: String?
    var addressLabel: String?
    var hoursLabel: String?
    var detailsLabel: String?
    var infoLabel: String?
  
    
    // Initialize and create deal instances
    init?(dayDetailLabel: String, restaurantLabel: String, addressLabel: String, hoursLabel: String, detailsLabel: String, infoLabel: String) {
        
        /*
         * Initialization should fail if there is no day detail, restaurant,
         * location, hours, price, or info labels.
         */
        
        guard !dayDetailLabel.isEmpty || !restaurantLabel.isEmpty ||
              !addressLabel.isEmpty || !hoursLabel.isEmpty ||
              !detailsLabel.isEmpty || infoLabel.isEmpty else {
            return nil
        }
        
        // Initialize deal object labels
        self.dayDetailLabel = dayDetailLabel.capitalized
        self.restaurantLabel = restaurantLabel.capitalized
        self.addressLabel = addressLabel.capitalized
        self.hoursLabel = hoursLabel
        self.detailsLabel = detailsLabel
        self.infoLabel = infoLabel.capitalized
    
    }
} // End of Deal class

