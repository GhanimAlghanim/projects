//
//  wage.swift
//  Window-Shopper
//
//  Created by TheNextG on 11/16/17.
//  Copyright © 2017 TheNextG. All rights reserved.
//

import Foundation
class Wage {
    class func getHours (forWage wage: Double, andPrice price: Double) -> Int{
        return Int(ceil(price/wage))
    }
}
