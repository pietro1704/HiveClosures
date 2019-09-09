import UIKit

var lista = [1, 2, 3, 4, 5]

let primeiro = lista.remove(at: 0)

//autoclosure = closure criada automaticamente
//passada como argumento da funcao
let primeiroClosure = {lista.remove(at: 0)}
print("lista antes = ", lista)
print()

//elemento não é removido até a closure ser chamada
print("primeiroClosure = ", primeiroClosure())
print("lista = ", lista)



func removeLista(item removido: () -> Int){
	print("removi o item \(removido())")
}

print()
print("ainda tenho \(lista.count) itens na lista")

removeLista(item: {lista.remove(at: 0)})

print("lista \(lista)agora com \(lista.count) itens")

func removeListaAuto(item removido: @autoclosure () -> Int){
	print("removi o item \(removido())")
}

print()
print("ainda tenho \(lista.count) itens na lista")

removeListaAuto(item: lista.remove(at: 0))

print("lista \(lista)agora com \(lista.count) itens")



