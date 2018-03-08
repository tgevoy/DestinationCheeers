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
        let monday = Day(dayLabel: "Monday", messageLabel: "Mango Cheesecake & Mojitos", restaurantLabel: "Case Of The Mondays", locationLabel: "123 Fake Street, Victoria, BC", hoursLabel: "3 - 6 PM", detailsLabel: "Scrumptious Mango Cheescake that melts in your mouth $5 per/slice.\n\nRefreshingly delicious Mojitos (choice of mint, raspberry, or blueberry) $5 for 2oz.")
        daysOfWeek.append(monday)
        
        let tuesday = Day(dayLabel: "Tuesday", messageLabel: "Tuna Tatki & Tequila + Tonics", restaurantLabel: "Yum, yum, yum!", locationLabel: "234 Fake Street, Victoria, BC", hoursLabel: "3 to 6 PM", detailsLabel: "Fresh from the ocean and locally caught Tuna Tataki $12 for half-size or $15 for full size.\n\nDelicious and refreshing Gin + Tonics to enjoy $6 for 2oz.")
        daysOfWeek.append(tuesday)
        
        let wednesday = Day(dayLabel: "Wednesday", messageLabel: "Hot Wings & Whiskey Sours", restaurantLabel: "Just Wing'n It", locationLabel: "345 Fake Street, Victoria, BC", hoursLabel: "3 to 6 PM and 9 to 11 PM", detailsLabel: "Tempt your tastebuds and tolerance levels with our house-made Hot-Wings $6 per/pound.\n\nThirsty? Enjoy a tried and true Whiskey Sour cocktail $5 for 1.5oz.")
        daysOfWeek.append(wednesday)
        
        let thursday = Day(dayLabel: "Thursday", messageLabel: "Tandoori Chicken & Tiki Masala", restaurantLabel: "India's Finest!", locationLabel: "456 Fake Street, Victoria, BC", hoursLabel: "3 to 6PM and 9 to 11 PM", detailsLabel: "Ever wanted to travel to India, but couldn't? Let the delicious flavours come to you with our sintilizing Tandoori Chicken and Tiki Masala dishes, both for $12.")
        daysOfWeek.append(thursday)
        
        let friday = Day(dayLabel: "Friday", messageLabel: "Featured Pints & Filet Mignon", restaurantLabel: "TGI...Friyays!", locationLabel: "567 Fake Street, Victoria, BC", hoursLabel: "3 to 6 PM and 9 to 11 PM", detailsLabel: "Unwind from the workweek with our locally made Featured Pints $5.50\n\nCraving some tender and juicy meat? Try our award-winning Filet Mignon (9oz) for $23")
        daysOfWeek.append(friday)
        
        let saturday = Day(dayLabel: "Saturday", messageLabel: "Shucked Oysters & Soup du Jour", restaurantLabel: "Nautical Nancys", locationLabel: "678 Fake Street, Victoria, BC", hoursLabel: "3 to 6 PM and 9 to 11 PM", detailsLabel: "Roll your sleeves up and start shucking! Fresh and locally caught Shucked Oysters $1 per/shuck.\n\nOur famous Soup du Jour is perfect for any day and will surely fill you up $6 (bowl) or $4 (cup).")
        daysOfWeek.append(saturday)
        
        let sunday = Day(dayLabel: "Sunday", messageLabel: "Seafood Caesars & Select Appies", restaurantLabel: "Stormy Waters", locationLabel: "789 Fake Street, Victoria, BC", hoursLabel: "3 to 6 PM and 9 to 11 PM", detailsLabel: "Want a meal in a drink? Enjoy one of our robust Seafood Caesars (2oz) for $7\n\nOur Select Appies are also perfect for a quick bite $6.50 (ask your server).")
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
