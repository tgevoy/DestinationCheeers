//
//  HelpViewController.swift
//  DestinationCheeers
//
//  Created by Tim Evoy on 2018-03-02.
//  Copyright © 2018 Tim Evoy. All rights reserved.
//

/*
 * This help view controller class displays the information objects when a user
 * selects the information button on home screen
 */
import UIKit

class HelpViewController: UIViewController {
    
    // MARK: Properties - help screen labels
    @IBOutlet weak var helpLabel: UILabel!
    @IBOutlet weak var contactLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Static text for the help and contact labels
        self.helpLabel.text = "The establishments and prices listed are subject to change without notice. Destination Cheeers! does its best to provide accurate and up-to-date data from the places we promote herein. The user (i.e., 'You') acknowledges and frees Destination Cheeers! from any liability that may arise from using our service."
        self.contactLabel.text = "For issues, comments, and suggestions please contact us at: info@destinationcheeers.ca"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

} // End HelViewController class
