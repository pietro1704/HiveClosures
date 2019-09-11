import UIKit

func soma(x:Int, y: Int) -> Int {
    return x + y
}

func mult(x:Int, y: Int) -> Int {
    return x * y
}

soma(x: 3, y: 2)

let myFunc = soma

myFunc(2,8)

func executeOperation(func f: (Int,Int) -> Int, over x: Int, and y: Int) -> Int {
    return f(x,y)
}

executeOperation(func: soma, over: 2, and: 1)
executeOperation(func: mult, over: 2, and: 1)

func myOperation() -> ( (Int,Int) -> Int ) {
    return mult
}

let myFunc2 = myOperation()

myFunc2(2,4)

func multiply(_ against: Int) -> ((Int) -> Int) {
    return { (x: Int) -> Int in
        return mult(x: x,y: against)
    }
}

let double = multiply(2)

double(3)
double(8)
