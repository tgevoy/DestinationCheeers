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
    var priceLabel: String?
    var infoLabel: String?
    var dcDealIcon: UIImage?
    
    // Initialize and create deal instances
    init?(dayDetailLabel: String, restaurantLabel: String, addressLabel: String, hoursLabel: String, priceLabel: String, infoLabel: String, dcDealIcon: UIImage) {
        
        /*
         * Initialization should fail if there is no day detail, restaurant,
         * address, hours, price, or info labels.
         */
        
        guard !dayDetailLabel.isEmpty || !restaurantLabel.isEmpty ||
              !addressLabel.isEmpty || !hoursLabel.isEmpty ||
              !priceLabel.isEmpty || infoLabel.isEmpty else {
            return nil
        }
        
        // Otherwise, initialize deal object labels and image.
        self.dayDetailLabel = dayDetailLabel.capitalized
        self.restaurantLabel = restaurantLabel.capitalized
        self.addressLabel = addressLabel.capitalized
        self.hoursLabel = hoursLabel
        self.priceLabel = priceLabel
        self.infoLabel = infoLabel.capitalized
        self.dcDealIcon = dcDealIcon
    }
}

