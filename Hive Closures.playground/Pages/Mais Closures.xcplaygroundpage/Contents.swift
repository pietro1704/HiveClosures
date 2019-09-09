import UIKit

let lista = [2,4,3,1,5,6]

//closure como conhecemos
var reversa1 = lista.sorted { (a, b) -> Bool in
	return a > b
}
print("reversa1 = ", reversa1)


//infere o tipo pelo contexto (sorted é do tipo (Int, Int) -> Bool)
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

// < é uma funcao que recebe 2 argumentos e retorna Bool
var reversa5 = lista.sorted(by: >)
print("reversa5 = ", reversa4)



//funcao map
var numeros = [5,6,7,8,9,10]
//numeros.map(<#T##transform: (Int) throws -> T##(Int) throws -> T#>)

var resposta = numeros.map({$0 + 10})
print("resposta do map = ", resposta)


