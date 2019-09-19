import UIKit

var lista = [1,2,3,4,5,6]
print(lista.count, "itens ")//6 itens
print()

let primeiro = { lista.remove(at: 0) }
print(lista.count, "itens ")//6 itens
print()

//lista nao é modificada até primeiro ser chamado...
print("primeiro da lista: \(primeiro())!")//1!
print()
print(lista.count, "itens ")//5 itens

//lista = [2,3,4,5,6]
func proximo(lista imprimePrimeiro: () -> Int) {
	print()
	print("primeiro da lista é \(imprimePrimeiro())!")
}

//sem @autoclosure
//aqui eu preciso declarar a funcao de closure (chaves {})
proximo(lista: {lista.remove(at: 0)})//2!


func proximoAutoclosure(lista imprimePrimeiro: @autoclosure () -> Int) {
	print()
	print("lista ainda é ",lista)//3,4,5,6

	print("primeiroAutoclosure da lista é: \(imprimePrimeiro())!")
	//imprimePrimeiro() devolve Int!!
}

//com @autoclosure = sem chaves <declaracao de funcao de closure>
//nao preciso declarar a funcao de closure na chamada
proximoAutoclosure(lista: lista.remove(at: 0))//3!

print("lista agora: ", lista)
