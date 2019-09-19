import UIKit

let lista = [2,4,3,1,5,6]

//-------------lista.sorted(by: <#T##(Int, Int) throws -> Bool#>)
var reversa1 = lista.sorted { (a, b) -> Bool in
	return a > b
}
print("reversa1 = ", reversa1)

//ordenação esdrúxula
//ordeno primeiro os pares e depois os impares
lista.sorted { (a, b) -> Bool in
	if a % 2 == 0{
		if b % 2 == 0 {
			return a < b
		}else{
			return true//a antes do b
		}
	}else{
		if b % 2 == 1{
			return a < b
		}else{
			return false//b antes do a
		}
	}
}


//infere o tipo pelo contexto (sorted é do tipo (Int, Int) -> Bool)
//posso omitir o Bool
var reversa2 = lista.sorted(by: {a, b in return a > b})
print("reversa2 = ", reversa2)

//como é uma expressão só, podemos omitir o return
var reversa3 = lista.sorted(by: {a, b in a > b})
print("reversa3 = ", reversa3)


//podemos pegar os argumentos da closure diretamente
//closure sorted recebe (a, b) = ($0, $1)
//-------lista.sorted(by: <#T##(Int, Int) throws -> Bool#>)
var reversa4 = lista.sorted(by: {$0 > $1})
print("reversa4 = ", reversa4)

// > é uma funcao que recebe 2 argumentos e retorna Bool
var reversa5 = lista.sorted(by: >)
print("reversa5 = ", reversa5)

//------------------------------------------------------------------------------------------------------------------------------------------------------------


let oi:(String) -> () = {print("olá \($0)")}

oi("alunos")


//funcao map
//--numeros.map(<#T##transform: (Int) throws -> T##(Int) throws -> T#>)
var numeros = [5,6,7,8,9,10]

var resposta = numeros.map({$0 + 10})
print("resposta do map = ", resposta)


//isso é uma variável
var soma:(Int, Int) -> Int = {$0 + $1}

soma(4, 6)

//filter-->pega os que passam no filtro
let pares = lista.filter { $0 % 2 == 0}
print(pares)

//reduce-->junta a lista toda por uma funcao(closure) definida por voce
lista.reduce(100, +)

let listaNomes = ["alan", "brian", "charlie"]

let listaReduce = listaNomes.reduce("====") { (text, name) in "\(text)--\(name)"
}
print(listaReduce)



func myFunc(x: Int, y: Int, f: (Int,Int) -> Int) -> Int {
	return f(x,y)
}

let b = 5

func z() -> Int {
	let a = 3
	return myFunc(x: 3, y: 2) { (number1, number2) -> Int in
		(number1 + number2) * a - b
	}
}

func assyncFunc(completion:(Int) -> Void) {
	//update something asynhcronously
	let result = 3
	//Call completion handler to notify who called me
	completion(result)
}

//Imagine we are in cellForRow
//Dequeue cell
let aCell =  UITableViewCell()
//Update data assynchronously
assyncFunc { (value) in
	//Update the label on the exactly cell
	//that called...Even if I have called for
	//hundred thousands different cells!!!!
	aCell.textLabel?.text = "\(value)"
}






