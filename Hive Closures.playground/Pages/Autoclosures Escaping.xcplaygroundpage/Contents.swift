import UIKit

var listaAntiga = [1,2,3,4,5,6]

//listaNova declarada fora da funcao -> precisa do escaping
var listaNova: [() -> Int] = []

func insereListaNova(_ item: @autoclosure @escaping () -> Int) {
	listaNova.append(item)
}

//autoclosure->retorna o parametro passado aqui na chamada da funcao insereListaNova
insereListaNova(listaAntiga.remove(at: 0))

insereListaNova(listaAntiga.remove(at: 0))

print("peguei \(listaNova.count) itens.")

print("lista nova = ")
for item in listaNova {
	print(item())
}

