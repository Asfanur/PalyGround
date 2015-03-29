// Playground - noun: a place where people can play

import UIKit

//Classes, Structures and Enums can have computed properties 
//Only Classes and Structures can have stored properties

struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}
var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
rangeOfThreeItems.firstValue = 6

let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
//Not assignable because of let
//rangeOfFourItems.firstValue = 6

 //Lazy stored property must use var 

class DataImporter {
     var fileName = "data.txt"
    
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
    // the DataManager class would provide data management functionality here
}

let manager = DataManager()
// the DataImporter instance for the importer property has not yet been created
manager.data.append("Some data")
manager.data.append("Some more data")
manager.importer.fileName

//Computed Properties 

struct Point  {
     var x = 0.0 ,y = 0.0
}

struct Size {
    var width = 0.0 , hight = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    // Computer property should be var
    var center: Point {
        get {
            let centerX = origin.x + (size.width/2)
            let centerY = origin.y + (size.hight/2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width/2)
            origin.y = newCenter.y - (size.hight/2)
            
        }
    }
    
}

var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, hight: 10.0))
let initialSquareCenter = square.center
square.center = Point(x: 10, y: 10)


//For readonly computed property remove get keyword and its braces
struct Cuboid {
    var width = 0.0, hight = 0.0, depth = 0.0
    var volume : Double {
        return width * hight * depth
    }
    
}

let fourByFiveByTwo = Cuboid(width: 4.0, hight: 5.0, depth: 2.0)
fourByFiveByTwo.volume

//Property observer can not be set for lazy property
class StepCounter {
    var totalSteps:Int = 0 {
        willSet(newTotalStep){
            println("About to set total steps to \(newTotalStep)")
            
        }
        didSet {
            if totalSteps > oldValue {
                println("added \(totalSteps - oldValue) steps")
                 
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200
 




 
