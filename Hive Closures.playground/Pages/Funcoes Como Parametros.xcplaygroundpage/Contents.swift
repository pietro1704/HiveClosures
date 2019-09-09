import UIKit

//funcao devolve outra funcao
//essa funcao devolvida é () -> Int
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
	print("chamei a funcao makeIncrementer...")
	var runningTotal = 0

	//closure captura variaveis da funcao pai
	func incrementer() -> Int {
		runningTotal += amount
		print("amount = ", amount)
		print("runningTotal = ", runningTotal)
		print()
		return runningTotal
	}

	//retorna uma funcao
	return incrementer
}

//incrementByTen é uma funcao (retorno de makeIncrementer)
let incrementByTen = makeIncrementer(forIncrement: 10)

incrementByTen()

incrementByTen()

let incrementBySeven = makeIncrementer(forIncrement: 7)

incrementBySeven()

incrementByTen()


//passagem por referencia, nao cria outro contador
let outroIncrementByTen = incrementByTen

outroIncrementByTen()
