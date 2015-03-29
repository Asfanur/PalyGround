// Playground - noun: a place where people can play

import UIKit

class Counter {
    var count = 0
    func increment() {
        count++
    }
    func incrementBy(amount:Int,numberOfTimes:Int) {
        count += amount * numberOfTimes
    }
    func reset() {
        count = 0
    }
    
    func incrementByWithDifferentSyntax(#amount:Int, _ numberOfTimes:Int){
        count += amount * numberOfTimes
    }
}

let counter = Counter()
counter.increment()
counter.incrementBy(5,numberOfTimes:3)
counter.incrementByWithDifferentSyntax(amount: 5, 3)
counter.reset()

//Modify value type from within instance methods
// use mutating keyword
struct Point {
    var x  = 0.0, y = 0.0
    mutating func moveBy(deltaX:Double , y deltaY:Double) {
        //x += deltaX
        //y += deltaY
        self = Point(x: x + deltaX, y: y + deltaY)
    }
}

var somePoint = Point(x: 1.0, y: 1.0)
somePoint.moveBy(2.0, y: 3.0)

 //

enum TriStateSwitch {
    case Off,Low,High
    mutating func next() {
        switch self {
        case .Off:
            self = Low
        case .Low:
            self = High
        case .High:
            self = Off
        }
    }
}

var ovenLLight = TriStateSwitch.Low
ovenLLight.next()
ovenLLight.next()

// Type method 

class SomeClass {
    class func someTypeMethod() {
       println(" class mehtod ")
    }
}

SomeClass.someTypeMethod()

