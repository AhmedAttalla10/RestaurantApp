//
//  RestaurantCell.swift
//  RestaurantGuide
//
//  Created by hima attalla on 3/5/19.
//  Copyright © 2019 ahmed attalla. All rights reserved.
//

import UIKit

class RestaurantCell: UITableViewCell {

    @IBOutlet weak var RestaurantName: UILabel!
   
    @IBOutlet weak var RestaurantPhone: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
   
    func configureCell(for restaurant: Restaurant) {
        RestaurantName.text = restaurant.name
        RestaurantPhone.text = restaurant.phone
    }
}
