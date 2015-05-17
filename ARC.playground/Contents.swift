//: Playground - noun: a place where people can play

import UIKit

class Person {
    let name :String
    init(name:String){
        self.name = name
        println("\(name) is being initialized")
    }
    deinit {
        println("\(name) is being deinitalized")
    }
}



var reference1:Person?
var reference2:Person?
var reference3:Person?


reference1 = Person(name: "John")

