// Playground - noun: a place where people can play

import UIKit

struct Farenheit {
    var temperature:Double
    init(){
        temperature = 32.0
    }
}

var f = Farenheit()

struct Celsius {
    var temperatureInCelcious:Double
    init(fromFarenheit far:Double) {
        temperatureInCelcious = (far-32.0)/1.8
    }
    init(fromKelvin kel:Double) {
        temperatureInCelcious = kel - 273.15
        
    }
}

let boilingPointWater  = Celsius(fromFarenheit: 212.0)

let freezingPointWater = Celsius(fromKelvin: 273.15)

struct Color {
    let red,green,blue:Double
    init(red:Double,green:Double,blue:Double){
        self.red = red
        self.green = green
        self.blue = blue
    }
    
    init(white:Double) {
        self.red = white
        self.green = white
        self.blue = white
    }
}

let mgenta = Color(red: 1.0, green: 0.0, blue: 1.0)
let halfGray = Color(white: 0.5)

class SurveyQuestion {
    let text:String
    var response:String?
    init(text:String){
        self.text = text
    }
    func ask(){
        println(text)
    }
}


let cheeseQuestion = SurveyQuestion(text: "Do you like cheese ?")

cheeseQuestion.ask()
cheeseQuestion.response = "Oh yes!!"
class ShoppingListItem {
    var name:String?
    var quantity = 1
    var purchased = false
}

var item = ShoppingListItem()

class Vehicle {
    var numberOfWheels  = 0
    var description :String {
        return "\(numberOfWheels) wheels"
    }
}

let vehicle = Vehicle()

class Bicycle: Vehicle {
    override init() {
         super.init()
        numberOfWheels = 2
        
    }
}

let bicycle = Bicycle()

class Food {
    var name:String
    
    init(name:String) {
        self.name = name
    }
    
    convenience init() {
        self.init(name:"Unnamed")
    }
}

class RecipeIngrediants:Food {
    var quantity:Int
    init(name:String, quantity:Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    
    override convenience init(name: String) {
        self.init(name:name,quantity:1)
    }
}

class ShoopingList: RecipeIngrediants {
    var purchased = false
    var description:String {
        var output = "\(quantity) ✖︎ \(name) "
        output += purchased ? " ✓ " : " ✘ "
        return output
    }
}

let breakfast = ShoopingList(name: "Orange juice")
breakfast.description

struct Animal {
    let species: String
    init?(species:String) {
        if species.isEmpty {return nil}
        self.species = species
    }
}

let someCreature = Animal(species: "Giraffe")

let anomymous = Animal(species: "")
if anomymous == nil {
    println("An animynous object cannot be creaed")
}

enum Temperature {
    case Kelvin, Celsius, Fahrenheit
    init?(symbol:Character) {
        switch symbol {
            case "K":
            self = .Kelvin
            case "C":
            self = .Celsious
            case "F":
            self = .Fahrenheit
        }
    }
}
// Failabel initializer with raw value
enum RawTemperature:Character {
    case Kelvin = "K" , Celcious = "C" , Fahrenheit = "F"
}






