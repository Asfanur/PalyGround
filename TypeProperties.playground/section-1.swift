// Playground - noun: a place where people can play

import UIKit

struct SomeStructure {
    static var storedTypeProperties = "Some Value"
    static var computedTypeProperties : Int {
        return 1
    }
}

enum SomeEnum {
    static var storedTypeProperty = "Some Value"
    static var computedTypeProperty :Int {
        return 1
    }
}


class SomeClass {
     class var computedTypeProperty :Int {
        return 1
    }
}

SomeClass.computedTypeProperty
