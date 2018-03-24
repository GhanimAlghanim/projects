//
//  DroppablePin.swift
//  pixel-city
//
//  Created by TheNextG on 12/14/17.
//  Copyright © 2017 TheNextG. All rights reserved.
//

import Foundation
import MapKit


class DroppablePin: NSObject, MKAnnotation {
    dynamic var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
}
