//
//  Person.swift
//  ARC
//
//  Created by Asfanur Arafin on 15/05/2015.
//  Copyright (c) 2015 Asfanur Arafin. All rights reserved.
//

import UIKit

class Person {
    let name :String
    var apartment:Apartment?
    var aweakApartment:WeakApartment?
    
    init(name:String){
        self.name = name
        println("\(name) is being initialized")
    }
    deinit {
        println("\(name) is being deinitalized")
    }
}
