import Foundation

let lista = [2,4,3,1,5,6]

//closure como conhecemos
var reversa1 = lista.sorted { (a, b) -> Bool in
	return a > b
}
print("reversa1 = ", reversa1)


//infere o tipo pelo contexto (sorted é do tipo (Int, Int) -> Bool
var reversa2 = lista.sorted(by: {a, b in return a > b})
print("reversa2 = ", reversa2)

//como é uma expressão só, podemos omitir o return
var reversa3 = lista.sorted(by: {a, b in a > b})
print("reversa3 = ", reversa3)


//podemos pegar o argumento da 
