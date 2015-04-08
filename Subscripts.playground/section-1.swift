// Playground - noun: a place where people can play

import UIKit

struct TimesTable {
    let multiplier : Int;
    subscript(index : Int) -> Int {
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
threeTimesTable[6]

struct Matrix {
    let rows:Int, columns:Int
    var grid: [Double]
    init(rows: Int, columns : Int) {
        self.rows = rows;
        self.columns = columns
        grid = Array(count: rows * columns, repeatedValue: 0.0)
    }
    
    func indexIsValidOfRow(row:Int, column :Int) -> Bool {
        return (row >= 0 && row < self.rows && column >= 0 && column < self.columns)
    }
    
    subscript (row : Int, column : Int) -> Double {
        get {
            assert(indexIsValidOfRow(row, column: column), " index out of range")
            return grid[(row * column) + column];
        }
        
        set {
            assert(indexIsValidOfRow(row, column: column), " index out of range")
            grid[(row * column) + column] = newValue

            
        }
    }
    
}

var matrix  = Matrix(rows: 2, columns: 2)
 matrix[0,1] = 1.5
matrix[1,0] = 3.5

matrix

//let someValue = matrix[2,2]