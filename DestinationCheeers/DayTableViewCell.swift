//
//  DayTableViewCell.swift
//  DestinationCheeers
//
//  Created by Tim Evoy on 2018-02-24.
//  Copyright © 2018 Tim Evoy. All rights reserved.
//

import UIKit

class DayTableViewCell: UITableViewCell {
    
    // MARK: Property - dayLabel outlet
    @IBOutlet weak var dayLabel: UILabel!
    
    // MARK: Property - messageLabel outlet
    @IBOutlet weak var messageLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
