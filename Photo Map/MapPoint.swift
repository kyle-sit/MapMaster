//
//  MapPoint.swift
//  Photo Map
//
//  Created by Kyle Sit on 8/22/17.
//  Copyright © 2017 Timothy Lee. All rights reserved.
//

import UIKit
import MapKit
    
class MapPoint: NSObject, MKAnnotation {
    let title: String?
    //let locationName: String
    //let category: String
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, coordinate: CLLocationCoordinate2D) {
    //init(title: String, locationName: String, category: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        //self.locationName = locationName
        //self.category = category
        self.coordinate = coordinate
            
        super.init()
    }
}

