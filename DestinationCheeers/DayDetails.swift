//
//  DayDetails.swift
//  DestinationCheeers
//
//  Created by Tim Evoy on 2018-02-25.
//  Copyright © 2018 Tim Evoy. All rights reserved.
//

import UIKit

class DayDetails {
    
    static func generateDaysOfWeek() -> [Day] {
        return [
            Day(dayLabel: "Monday", messageLabel: "Mango Cheesecake & Mojitos")!,
            Day(dayLabel: "Tuesday", messageLabel: "Tuna Tatki & Tequila + Tonics")!,
            Day(dayLabel: "Wednesday", messageLabel: "Hot Wings & Whiskey Sours")!,
            Day(dayLabel: "Thursday", messageLabel: "Tandoori Chicken & Tiki Masala")!,
            Day(dayLabel: "Friday", messageLabel: "Deepfried Mars Bar, Featured Pints, & Filet Mignon")!,
            Day(dayLabel: "Saturday", messageLabel: "Shucked Oysters, Street Tacos, and Soup du Jour")!,
            Day(dayLabel: "Sunday", messageLabel: "Espresso Shafts, Seafood Caesars, & Select Appies")!,
        ]
    }
}
