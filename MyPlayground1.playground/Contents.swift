import UIKit

func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let bounds = minMax(array: [8,0 ,6,3,9,-96, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)")
func daska (buddy : String , from hometown :String)->String{
return "YALA \(buddy) ! Glad to see you from \(hometown)."}

print(daska(buddy: "USMAN", from: "KORAIKAY"))

func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
    // In the function body, firstParameterName and secondParameterName
    // refer to the argument values for the first and second parameters.
}
someFunction(1, secondParameterName: 2)
//

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
print (arithmeticMean(1, 2, 3, 4, 5))
// returns 3.0, which is the arithmetic mean of these five numbers
print (arithmeticMean(3, 8.25, 18.75))
// returns 10.0, which is the arithmetic mean of these three numbers
//arithmeticMean()
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}

print("Result: \(mathFunction(2, 3))")
mathFunction = multiplyTwoInts
print("Result: \(mathFunction(2, 3))")
//
func printMathResult (_ mathFunction :(Int,Int)->Int,_
                      a: Int,_ b :Int)
{
    print("Result : \(mathFunction(a, b))")
}
var mathFunction: (Int, Int) -> Int = addTwoInts
printMathResult(addTwoInts)


// Prints "min is -6 and max is 109"

//
//
////let adefsrg = "123"
//let fsdg = Int(adefsrg)
//
//if fsdg != nil {
//
//
//
//    print("fsdg not nil",fsdg)
//}else{
//    print("nil")
//}
//if fsdg: String? { print(unwrp)}
//
////let val:Bool  = false
////let val1:Int  = 1
////let val2:Double  = 12.45
////let val3:String  = ""
////
//////var a : String = val1
////var sum = Int(val2)
////print(sum)
////let foye(Int,Bool) = (9,true)
//
//
//
//
//
//
////var x = true
////var y = 1
////
////if x && y==1 {
////    print("hello")
////}else {
////    print("Jango")
////}
//
////if x {print("hello")}
////    else {print("nothing")}
//
//
//
//var xyz = ("a", "b", "c", ("X", "Y", "Z"))
//var alphabets = ("A", "B", "C", ("a", "b", "c"),"A", "B", "C", ("a", "b", "c"),"A", "B", "C", ("a", "b", "c"))
//
//if
//
//
////func doSomething(){}
/////*  comment
////*/
////func square(integer : Int) -> Int {
////    return integer * integer
////}
////for i in 0..<64{
////    var _ = sin (Double(i) * 100)
////}
//////type conversion UInt8 to 16
////let twoThousand: UInt16 = 2_000
////let one: UInt8 = 1
////let twoThousandAndOne = twoThousand + UInt16(one)
////print(twoThousandAndOne)
//////type conversion double + double
////let three = 3
////let pointOneFourOneFiveNine = 0.14159
////var pi = Double(three) + pointOneFourOneFiveNine
////print(pi)
////tuple
//
//let http404Error = (404, "Not Found")
//
////parts in tuple
//
//let (statusCode,statusMessage) = http404Error
//
////print("The status code is \(statusCode)")
//// Prints "The status code is 404"
//print("The status message is \(statusMessage)")
//// create tuple with two elements
//var product = ("MacBook", 1099.99)
//
//print("Original Tuple: ")
//
//// access tuple elements
//print("Name:", product.0)
//print("Price:", product.1)
//
//// modify second value
//product.1 = 1299
//
//print("\nTuple After Modification: ")
//
//// access tuple elements
//print("Name:", product.0)
//print("Price:", product.1)
//// create named tuple
//var company = ( : "happy coder jurney ;", mobizion : 1.0 )
//print("product" , company.product)
//print("through" , company.mobizion)
////nested tuple
//var alphabets = ("A", "B", "C", ("a", "b", "c"))
//
//// access first element
//print(alphabets.0)   // prints "A"
//
//// access the third element
//print(alphabets.3.1)
//
//// access nested tuple
//print(alphabets.3.2)
//// dictionary inside a tuple
//var laptopLaunch = ("MacBook", 1299, ["Nepal": "10 PM", "England": "10 AM"])
//print(laptopLaunch.2)
//
//laptopLaunch.2["USA"] = "11 AM"
//
//print(laptopLaunch.2)
////forced unwrapping of the optional’s value:
//let possibleNumber = "123"
//let convertedNumber = Int(possibleNumber)
//if convertedNumber != nil {
//    print("convertedNumber has an integer value of \(convertedNumber!).")}
////optional binding
////if let abc = "123"
//
//if let actualNumber = Int(possibleNumber) {
//    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
//} else {
//    print("The string \"\(possibleNumber)\" couldn't be converted to an integer")}
//
////Implicitly Unwrapped Optionals
//let possibleString: String? = "An optional string."
//let forcedString: String = possibleString!
//// requires an exclamation point
//let assumedString: String! = "An implicitly unwrapped optional string."
//let implicitString: String = assumedString
//if assumedString != nil {
//    print(assumedString!)}
