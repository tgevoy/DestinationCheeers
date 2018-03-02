//
//  DayTableViewController.swift
//  DestinationCheeers
//
//  Created by Tim Evoy on 2018-02-24.
//  Copyright © 2018 Tim Evoy. All rights reserved.
//

import UIKit

class DayTableViewController: UITableViewController {
    
    // MARK: - Properties
    var daysOfWeek = [Day]()
    let cellIdentifier = "DayTableViewCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create the day details entries
         let monday = Day(dayLabel: "Monday", messageLabel: "Mango Cheesecake & Mojitos")
        daysOfWeek.append(monday)
        
        let tuesday = Day(dayLabel: "Tuesday", messageLabel: "Tuna Tatki & Tequila + Tonics")
        daysOfWeek.append(tuesday)
        
        let wednesday = Day(dayLabel: "Wednesday", messageLabel: "Hot Wings & Whiskey Sours")
        daysOfWeek.append(wednesday)
        
        let thursday = Day(dayLabel: "Thursday", messageLabel: "Tandoori Chicken & Tiki Masala")
        daysOfWeek.append(thursday)
        
        let friday = Day(dayLabel: "Friday", messageLabel: "Featured Pints & Filet Mignon")
        daysOfWeek.append(friday)
        
        let saturday = Day(dayLabel: "Saturday", messageLabel: "Shucked Oysters & Soup du Jour")
        daysOfWeek.append(saturday)
        
        let sunday = Day(dayLabel: "Sunday", messageLabel: "Seafood Caesars & Select Appies")
        daysOfWeek.append(sunday)
      
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source
    
    // Tells day table view cell how many sections (visial groupings of cells) to display.
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    /*
     * Tells the table view how many rows to display in a given section,
     * i.e., each day object should have its own section.
     */
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return daysOfWeek.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Set up the requested table view cell
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? DayTableViewCell else {
            fatalError("Selected cell is not of type \(cellIdentifier)")
        }
        
        let selectedDay = daysOfWeek[indexPath.row]
        cell.dayLabel?.text = selectedDay.dayLabel
        cell.messageLabel?.text = selectedDay.messageLabel
        
        return cell
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController to populate the UI
        // Pass the selected object to the new view controller.
        super.prepare(for: segue, sender: sender)
        if segue.identifier == "showDayDetails" {
            guard let navigationViewController = segue.destination as? UINavigationController else {
                // Segue destination does not exist
                fatalError("Unexpected destination \(segue.destination)")
            }
            
            guard let detailViewController = navigationViewController.visibleViewController as? DayDetailsViewController else {
                // Destination view controller does not exist
                fatalError("Unexpected visible view controller \(segue.destination)")
            }
            
            guard let selectedTableViewCell = sender as? DayTableViewCell else {
                // Table view cell type is incorrect
                fatalError("Unexpected index path for \(String(describing: sender))")
            }
            
            guard let indexPath = tableView.indexPath(for: selectedTableViewCell) else {
                // Row and section of selected cell does not exist
                fatalError("Unexpected index path for \(selectedTableViewCell)")
            }
            detailViewController.day = daysOfWeek[indexPath.row]
            
        }
        
    }
    
} // End of DayTableViewController class
