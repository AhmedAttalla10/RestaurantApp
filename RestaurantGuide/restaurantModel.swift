//
//  restaurantModel.swift
//  RestaurantGuide
//
//  Created by hima attalla on 2/1/19.
//  Copyright © 2019 ahmed attalla. All rights reserved.
//

import Foundation

class Restaurant {
    var name: String
    var type: String
    var brief: String
    var address: String
    var phone: String
    init(name: String, type: String, brief: String, address: String, phone: String) {
        self.name = name
        self.type = type
        self.brief = brief
        self.address = address
        self.phone = phone
    }
    
}

struct RestaurantSource {
    let restaurants = [
        Restaurant(name: "BATATAPALAC",
                   type: "BATATA",
                   brief: "VeryGoodBatata",
                   address: "Cairo",
                   phone: "12345678"),
        Restaurant(name: "BURGER",
                   type: "BURGER",
                   brief: "VeryGoodBurger",
                   address: "Alex",
                   phone: "87654321"),
        Restaurant(name: "PIZZA",
                   type: "PIZZA",
                   brief: "VeryGoodPizza",
                   address: "Mans",
                   phone: "12341234"),
        Restaurant(name: "CHICKEN",
                   type: "CHICKEN",
                   brief: "VeryGoodChicken",
                   address: "Giza",
                   phone: "11112222"),
    ]
}
