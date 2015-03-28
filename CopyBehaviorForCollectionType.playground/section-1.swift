// Playground - noun: a place where people can play

import UIKit

//Dictionaries are copied   
//if the keys/Values in a dictionary are value types they too are copied 
//if the keys/values are references the reference are copied not the instance

var ages = ["Peter": 23, "Wei": 35, "Anish": 65, "Katya": 19]
var copiedAges = ages

copiedAges["Peter"]=24;
ages["Peter"]


var a = [1, 2, 3]
var b = a
var c = a

a[0]
b[0]
c[0]
a[0] = 42
b[0] = 5
a[0]
b[0]
c[0]

if b == c {
    println("b and c still share the same array elements.")
} else {
    println("b and c now refer to two independent sets of array elements.")
}


if b[1...2] == c[1...2] {
    println("b and c still share the same array elements.")
} else {
    println("b and c now refer to two independent sets of array elements.")
}
