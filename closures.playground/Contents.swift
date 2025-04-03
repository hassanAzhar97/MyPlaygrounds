import UIKit

//
//var greeting = "Hello, playground"
//   Acepting parameters in a Closure

let driving = { (palace : String) in
    print("im going to \(palace) in my car")
    
}
driving("london")
//     returing value from closure

let driving1 = { (palace : String) in
    print("im going to \(palace) in my car")

}
let drivingWithReturn = {(palace : String)-> String in
    return "I M GOING TO \(palace)"
}
let message = drivingWithReturn("london")
print(message)
//
//    CLOSURES AS PARAMETERS

