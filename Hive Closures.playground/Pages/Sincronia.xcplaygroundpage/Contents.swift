import UIKit

//sem @escaping
func sincrona(lista:[Int], imprime: (Int) -> ()){
	var soma = 0
	for valor in lista{
		soma += valor
	}

	imprime(soma)
}

//sincrona. Só roda na thread Main
sincrona(lista: [1, 2, 3, 4, 5]) { (somaParaImprimir) in
	print("sincrona:")
	print("a soma da lista é \(somaParaImprimir)")
	print()
}

//funcao imprime é do tipo Int -> Void
func assincrona(lista:[Int], imprime: @escaping ((Int)->Void)){

	OperationQueue().addOperation {
		var soma = 0
		for valor in lista{
			soma += valor
		}
		OperationQueue.main.addOperation {
			imprime(soma)
		}
	}
	print()
}

print("antes da função assincrona")
assincrona(lista: [6, 7, 8, 9]) { (somaAsync) in
	//Função imprime
	print("eu sou a função imprime e só executei agora...")
	print("O valor resultante da função é é \(somaAsync)")
	//acabou a funcao imprime
}

print("retornou da função assincrona pela thread Main")
print()



