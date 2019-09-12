import UIKit

let soma: (Int, Int) -> Int  = {(a, b) in
	return a+b

}

soma(2, 3)

//encadeamento de funcoes
soma(soma(2, 4), soma(soma(1, 2), 3))

let nomeFora = "nomeFora"

func printNome(completion: (String) -> ()){
	let nome = "nomeFuncao"
	completion(nome)
}
printNome { (nome) in
	print("oi \(nome)")
}

let oi = {
	print("olá \(nomeFora)")//captura o nome do entorno (global)
}
oi()

let oi2 = {(name:String) in
	print("oi \(name)")
}
oi2("aluno2")

