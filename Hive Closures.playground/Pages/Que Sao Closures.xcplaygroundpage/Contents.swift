import UIKit

let soma: (Int, Int) -> Int  = {(a, b) in
	return a+b

}

soma(2, 3)

//encadeamento de funcoes
soma(soma(2, 4), soma(soma(1, 2), 3))

let nome = "Aluno"
let oi = {
	print("olá \(nome)")
}

print("ainda nao chamei oi()")
oi()
let oi2 = {(name:String) in
	print("oi \(name)")
}
oi2("aluno2")

