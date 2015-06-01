//
//  ViewController.swift
//  ARC
//
//  Created by Asfanur Arafin on 15/05/2015.
//  Copyright (c) 2015 Asfanur Arafin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var reference1:Person?
        var reference2:Person?
        var reference3:Person?
        
        reference1 = Person(name: "John")
        reference2 = reference1
        reference3 = reference1
        
        reference1 = nil
        reference2  = nil
        
        println("the reference is not yet deallocated")
        
        reference3 = nil
        
        println("reference is deallocated")
        
        var john:Person?
        var number73:Apartment?
        
        john = Person(name: "John")
        number73 = Apartment(number: 73)
        john!.apartment = number73
        number73!.tanent = john
        john = nil
        number73 = nil
        
        var smith:Person?
        var weakNumber420:WeakApartment?
        
        smith = Person(name: "Smith")
        weakNumber420 = WeakApartment(number: 420)
        
        smith!.aweakApartment = weakNumber420
        weakNumber420!.tanent = smith
        smith = nil
        weakNumber420 = nil
        
        
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

