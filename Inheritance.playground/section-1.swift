// Playground - noun: a place where people can play

import UIKit

class Vehicle {
    var currentSpeed  = 0.0
    var description : String {
        return "Traveling at \(currentSpeed) miles per Hour"
    }
    
    func makeNoise(){}
    
}

let someVariable = Vehicle()

println("Vehicle \(someVariable.description)")

class Bicycle: Vehicle {
     var hasBasket = false
    
}

let bicycle = Bicycle()
bicycle.currentSpeed = 15

println("Bicycle \(bicycle.description)")

class Tandam: Bicycle {
    var currrentNumberOfPassengers = 0 ;
    
    
}


let tandam = Tandam()
tandam.hasBasket = true
tandam.currentSpeed  = 22
tandam.currrentNumberOfPassengers = 2

println("Tandam \(tandam.description)")

class Train: Vehicle {
       override func makeNoise() {
         println("Choo Choo")
    }
}

let train = Train()

train.makeNoise()

class Car: Vehicle {
     var gear = 1
    override var description:String {
        return super.description + " in gear \(gear)"
    }
}
let car = Car()
car.currentSpeed = 25.0
car.gear = 3
println("Car : \(car.description)")

class AutomaticCar: Car {
    override var currentSpeed:Double {
        didSet {
            gear = Int(currentSpeed/10.0)+1;
        }
    }
}

let automaticCar = AutomaticCar()
automaticCar.currentSpeed = 35.0
println("Automatic car: \(automaticCar.description)")