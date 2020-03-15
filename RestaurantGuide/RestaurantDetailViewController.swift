//
//  RestaurantDetailViewController.swift
//  RestaurantGuide
//
//  Created by hima attalla on 1/30/19.
//  Copyright © 2019 ahmed attalla. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UIViewController {
    @IBOutlet weak var name: UINavigationItem!
    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var brief: UILabel!
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var phone: UILabel!
    var restaurant = Restaurant(name: "BATATA PALAC", type: "BATATA", brief: "VeryGoodBatata", address: "Cairo", phone: "12345678")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      configureview()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func configureview() {
        name.title = restaurant.name
        type.text = restaurant.type
        brief.text = restaurant.brief
        address.text = restaurant.address
        phone.text = restaurant.phone
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
