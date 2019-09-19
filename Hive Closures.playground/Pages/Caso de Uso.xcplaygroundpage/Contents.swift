import Contacts
import CoreLocation
import MapKit

var eldoradoLocation = CLLocation(latitude: -22.813534, longitude: -47.060841)


// Função inadequada
public func wrongGetAddressFromCoordinate(point: CLLocation) -> String? {

    var addressTxt = ""

    CLGeocoder().reverseGeocodeLocation(point, completionHandler: {(placemarks, error) -> Void in
        if error != nil {
            //handle error
        } else if let results = placemarks,
            results.count > 0 {
            let result = results[0]

            let postalAddressFormatter = CNPostalAddressFormatter()
            postalAddressFormatter.style = .mailingAddress

            if let fullAddress = result.postalAddress {
                addressTxt = postalAddressFormatter.string(from: fullAddress)
            } else if let city = result.locality, let state = result.administrativeArea {
                addressTxt = city + ", " + state
            }
        }
    })//até aqui foi a declaracao da closure(o completion handler), na chamada do reverseGeocodeLocation

    return addressTxt

}

var cellLabelText: String? = wrongGetAddressFromCoordinate(point: eldoradoLocation)

print(cellLabelText!)


//Função tratando a assincronia e passando uma nova função como parametro
public func rightGetAddressFromCoordinate(point: CLLocation, completion: @escaping (String?, Error?) -> Void) {

    var addressTxt = ""

    CLGeocoder().reverseGeocodeLocation(point, completionHandler: {(placemarks, error) -> Void in
        if error != nil {
            //handle error
            completion(nil,error)
        } else if let results = placemarks,
            results.count > 0 {
            let result = results[0]

            let postalAddressFormatter = CNPostalAddressFormatter()
            postalAddressFormatter.style = .mailingAddress

            if let fullAddress = result.postalAddress {
                addressTxt = postalAddressFormatter.string(from: fullAddress)
            } else if let city = result.locality, let state = result.administrativeArea {
                addressTxt = city + ", " + state
            }

            completion(addressTxt,nil)
        }
    })

}



rightGetAddressFromCoordinate(point: eldoradoLocation, completion: {(result, error) -> Void in
    if error != nil {
        //handle error
    } else if result != nil {
        cellLabelText = result
        print(cellLabelText!)
    }
})

