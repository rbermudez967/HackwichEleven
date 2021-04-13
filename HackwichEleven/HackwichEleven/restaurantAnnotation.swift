//
//  restaurantAnnotation.swift
//  HackwichEleven
//
//  Created by Randy Bermudez on 4/13/21.
//  Copyright © 2021 Randy Bermudez. All rights reserved.
//

import UIKit
import MapKit
class restaurantAnnotation: NSObject, MKAnnotation {

    
    let restaurantTitle: String?
    let restaurantType: String
    var coordinate: CLLocationCoordinate2D
    
    init(title:  String, type:String, coordinate: CLLocationCoordinate2D) {
        self.restaurantTitle = title
        self.restaurantType = type
        self.coordinate = coordinate
        
        super.init()
    }

    var subtitle: String?{
        return restaurantTitle
    }
    
}
