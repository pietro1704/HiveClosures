import UIKit

//passo a funcao de completion como parâmetro
func executadoPrimeiro(completion: (Int) -> ()){
	print("primeiro")
	completion(2)
}

func executadoDepois(){
	print("Acabei")
}

//na chamada de executadoPrimeiro eu defino o corpo da completion
executadoPrimeiro { (a:Int) -> () in

	print("primeira chamada da closure, posso chamar a funcao executadoDepois(), olha só")
	executadoDepois()

	print(a+1)
}

executadoPrimeiro { (a) in
	print("a = ", a)
}

executadoPrimeiro { (a) in
	print()
	print("segunda chamada, com corpo diferente!")
	print(a+3)
}


