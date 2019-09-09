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



