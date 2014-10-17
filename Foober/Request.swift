//
//  Request.swift
//  Foober
//
//  Created by David Mattia on 10/17/14.
//  Copyright (c) 2014 David Mattia. All rights reserved.
//

import Foundation

class Request {
    var restaurant: String?
    var location: String?
    var time: String?
    
    init(restaurant: String, location: String, time: String) {
        self.restaurant = restaurant
        self.location = location
        self.time = time
    }
}