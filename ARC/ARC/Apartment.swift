//
//  Apartment.swift
//  ARC
//
//  Created by Asfanur Arafin on 18/05/2015.
//  Copyright (c) 2015 Asfanur Arafin. All rights reserved.
//

import UIKit

class Apartment {
    
    let number :Int
    var tanent:Person?
    init(number:Int){
        self.number = number
        println("\(number) is being initialized")
    }
    deinit {
        println("\(number) is being deinitalized")
    }
   
}
