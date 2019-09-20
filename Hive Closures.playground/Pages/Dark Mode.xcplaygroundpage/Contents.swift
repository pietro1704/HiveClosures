import UIKit

let dynamicColor = UIColor{(traitCollection:UITraitCollection) ->  UIColor in
	if traitCollection.userInterfaceStyle == .dark{
		return .black
	}else{
		return .white
	}
}
