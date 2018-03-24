//
//  Switchstatus.swift
//  Eluxon
//
//  Created by TheNextG on 9/14/17.
//  Copyright © 2017 TheNextG. All rights reserved.
//

import Foundation

enum SwitchStatus: Togglable {
    case on, off
    
    mutating func Toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self  = .on
        }
    }
}
