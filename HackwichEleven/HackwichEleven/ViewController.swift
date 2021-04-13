//
//  ViewController.swift
//  HackwichEleven
//
//  Created by Randy Bermudez on 4/13/21.
//  Copyright © 2021 Randy Bermudez. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    //UHWO lat long 21.356760, -158.056400 via Bing maps
    // set up initial location (lat, long) for our map
    let initialLocation = CLLocation (latitude: 21.356760, longitude: -158.056400)
    
    //declare a region raidus around our initialLocation
    let regionRadius: CLLocationDistance = 10000

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        centerMapOnLocation(location: initialLocation)
        //add annotation in viewDidLoad
        let restaurantOne = restaurantAnnotation(title: "Kalapawai", type:"American", coordinate: CLLocationCoordinate2D (latitude: 21.346470, longitude: -158.080098))
        let restaurantTwo = restaurantAnnotation(title: "California Pizza Kitchen", type: "American", coordinate: CLLocationCoordinate2D (latitude: 21.333441, longitude: -158.050232))
        mapView.addAnnotation(restaurantOne)
        mapView.addAnnotation(restaurantTwo)
        
    }

    func centerMapOnLocation (location: CLLocation )
    {
      let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
        
    }
    
    
}

