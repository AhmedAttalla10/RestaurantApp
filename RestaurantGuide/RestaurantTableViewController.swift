//
//  RestaurantTableViewController.swift
//  RestaurantGuide
//
//  Created by hima attalla on 2/13/19.
//  Copyright © 2019 ahmed attalla. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {
    let restaurants = RestaurantSource().restaurants

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard let cell = tableView.dequeueReusableCell(withIdentifier: "restaurantCell", for: indexPath) as? RestaurantCell else { fatalError() }
        let restaurant = restaurants[indexPath.row]
        
        cell.configureCell(for: restaurant)
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let restaurantController = segue.destination as? RestaurantDetailViewController ,
            let indexpath = tableView.indexPathForSelectedRow
            else { fatalError() }
        restaurantController.restaurant = restaurants[indexpath.row]
    }
    
}
