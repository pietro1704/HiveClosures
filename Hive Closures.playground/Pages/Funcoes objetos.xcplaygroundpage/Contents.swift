import UIKit

//funcao como conhecemos
func soma(x:Int, y: Int) -> Int {
    return x + y
}

func mult(x:Int, y: Int) -> Int {
    return x * y
}

soma(x: 3, y: 2)

//funcao como variavel
let myFunc = soma

myFunc(2,8)

//funcao como parametro, usado dentro da funcao que chama
func executeOperation(func f: (Int,Int) -> Int, over x: Int, and y: Int) -> Int {
    return f(x,y)
}

executeOperation(func: soma, over: 2, and: 1)
executeOperation(func: mult, over: 2, and: 3)



//retorna funcao ((Int, Int) -> (Int)) = mult
func myOperation() -> ( (Int,Int) -> Int ) {
    return mult
}

let myFunc2 = myOperation()

myFunc2(2,4)

//retorno funcao
func multiplica(por multiplicador: Int) -> ((Int) -> Int) {

	//retorna funcao (Int -> Int)
    return { (x: Int) -> Int in

		//retorna Int
        return mult(x: x,y: multiplicador)
    }
}

let duplica = multiplica(por: 2)
duplica(3)
duplica(8)
