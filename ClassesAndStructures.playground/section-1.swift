// Playground - noun: a place where people can play

import UIKit
//Class starts with class and Struct start with struct keyword

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

//Creating Instances
let someVideoMode = VideoMode()

//Accessing Properties
someVideoMode.resolution.width

someVideoMode.resolution.width = 1280
someVideoMode.resolution.width

// Memberwise Initializers for Structure Types not available in Class
let vga = Resolution(width: 640, height: 480)

//Structures and Enumerations are Value types 

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
cinema.width = 2048

//They are having different value now
cinema.width
hd.width

//Same is true for enum value as well
enum CompassPoint {
    case North, South, East, West
}
var currentDirection = CompassPoint.West
let rememberedDirection = currentDirection
currentDirection = .East
if rememberedDirection == .West {
    println("The remembered direction is still .West")
}

//Classes are reference types
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0


let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0
//Here tenEighty.frameRate value has changed
//Note We are using let for both class
tenEighty.frameRate

//Identity Operator ====
//Use this operator to check whether two constants or variables refer the same single instance 

if tenEighty === alsoTenEighty {
    println("tenEighty and alsoTenEighty refer to the same Resolution instance.")
}

// EXCERCISE Try to change the value of Resulation which is a property of VideoMode

tenEighty.resolution.width = 200
alsoTenEighty.resolution.width


