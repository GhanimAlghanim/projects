//
//  Constants.swift
//  pixel-city
//
//  Created by TheNextG on 12/15/17.
//  Copyright © 2017 TheNextG. All rights reserved.
//

import Foundation

let apiKey = "c2df2e7aa85c35895d1b7effdb4a20e8"

func flickrUrl(forApiKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String {
    return "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
}















































