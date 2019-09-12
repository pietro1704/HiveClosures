import UIKit

//passo a funcao de completion como parâmetro para ser usada aqui dentro
func executadoPrimeiro(completion: (Int) -> ()){
	print()
	print("executado primeiro")

	//posso usar a funcao de completion pq foi passada como parametro
	completion(2)
}

func executadoDepois(){
	print("executado depois")
}

//na chamada de executadoPrimeiro eu defino o corpo da completion
executadoPrimeiro { (a) in
// a é o parametro de completion definido em executadoPrimeiro

	//posso até chamar outras funcoes
	executadoDepois()

	print(a*3)
}
//rodar até aqui para testar


//posso executar a funcao definindo completion de jeito diferente
executadoPrimeiro { (a) in

	//tenta digitar a chamada de executadoPrimeiro e aperte enter no placeholder :)
	print("a = ", a)
}

executadoPrimeiro { (a) in
	print()
	print("terceira chamada, com corpo diferente!")
	print(a+3)
}


