import UIKit

let soma: (Int, Int) -> Int  = {(a, b) in
	return a+b

}

soma(2, 3)

//encadeamento de funcoes
let lista = [4,5,8,2,9,7]
let somaMaior7 = lista.filter{$0 >= 7}.reduce(0, +)
//8 + 9 + 7 = 24
print(somaMaior7)



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

