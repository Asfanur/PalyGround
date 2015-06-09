//: Playground - noun: a place where people can play

import UIKit

extension Double {
    var km : Double {return self * 1_000.0}
    var m : Double {return self}
}

let aMarathon = 42.km + 195.m

// Extention can have new computed properties but they cannot have stored properties 

extension Int {
    enum Kind {
        case Negative, Zero, Positive
    }
    var kind:Kind {
        switch self {
        case 0 :
            return .Zero
        case let x where x > 0:
            return .Positive
        default:
            return .Negative
        }
    }
    
    func repetations(task:() -> ()) {
        for _ in 0..<self {
            task()
        }
    }
    
    mutating func square() {
        self =  self * self
    }
    
    subscript (var digitalIndex: Int) -> Int {
        var decimalBase = 1
        while digitalIndex > 0 {
            decimalBase *= 10
            --digitalIndex
        }
        return (self / decimalBase ) % 10
    }
}

3.repetations({
    println("Hello")
})

var someInt = 3
someInt.square()

123456[0]
123456[2]

func printIntegerKinds(numbers: [Int]) {
    for number in numbers {
        switch number.kind {
            case .Negative:
            print("- ")
        case .Zero:
            print("0 ")
        case .Positive:
            print("+ ")
        }
    }
    print("\n")
}

printIntegerKinds([3,19,0,-10])




