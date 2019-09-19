import UIKit

//passo a funcao de completion como parâmetro para ser usada aqui dentro
func executadoPrimeiro(closure: (Int) -> ()){
	print()
	print("executado primeiro")

	//posso usar a funcao de completion pq foi passada como parametro
	closure(2)
}

func executadoDepois(){
	print("executado depois")
}

executadoPrimeiro { (a) in

	//posso até chamar outras funcoes
	executadoDepois()

	print(a*3)
}

executadoPrimeiro { (a) in

	//tenta digitar a chamada de executadoPrimeiro e aperte enter no placeholder :)
	print("a = ", a)
}

executadoPrimeiro { (a) in
	print()
	print("terceira chamada, com corpo diferente!")
	print(a+3)
}

func funcaoNaoEnxerga(){
	print(a)
}


