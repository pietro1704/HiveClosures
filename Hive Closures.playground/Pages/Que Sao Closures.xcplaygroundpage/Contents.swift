import UIKit

let soma:(Int, Int) -> Int  = {(a, b) in
	return a+b

}

soma(2, 3)

soma(soma(2, 4), soma(soma(1, 2), 3))
