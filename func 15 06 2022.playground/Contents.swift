import UIKit

var greeting = "Hello, playground"


func hi(){
    print("aoa")
}
//
//   declarations

func processInput(input: String){}
func processInput (input:Int){}
func processInput(int: Int){}
func processInput (input: Int) -> String{
    return"\(input)."}
func processInput(input: Int)-> Int {
    return input*input
    
}

let a = 1+2
let b = 1.0 + 2.0
//


func ~=(integer: Int,double: Double)->Bool{
    return integer == Int(double)
}

a~=b

//


func ~=(integer : Int ,string : String) -> Bool {
    return"\(integer)" == string
}
let c = "3"
a~=c




//

//

//

//

//

//
//
//
///
/////
/////
///

//



//
func sayNoTo (name: String){
    print("theek o\(name)")
}
func say (greetings : String , to: String){
    print("\(greetings)  \(to)")
}
say(greetings: "high", to: "lollywood")
func add (_ a: Int , _ b: Int )-> Int {
    return a + b
}
add(9,4)
func addd (_  ints : Int...) -> Int
{
    return ints.reduce(0,+)
}
addd(8,6,4,1)

print("THIS", "Is" , "COOl",separator: " ",terminator: "!")


var stdScores = 76.00
func aplly(extra: Double , toScore score: inout Double){
    score += extra
}
aplly(extra: 12.0, toScore: &stdScores)
//
//
//
//
//
///
///
////
////
///
///
///
///
///
//func part 2


let values = ["1","2","3","4","5","6","7","8","9","10"]
let suits = ["♦","♦️","♥️","♣️","♧"]
import Foundation

func randomIndexFor(array : Array <Any>) -> Int {
    return Int (arc4random_uniform(UInt32(array.count)))
}

func dealACard() ->( value: String , suit: String) {
    let randomValueIndex = randomIndexFor(array: values)
    let randomSuitIndex = randomIndexFor(array: suits)
    return (values [randomValueIndex],suits[randomSuitIndex])
}
let card = dealACard()
card.0
card.suit
func add(ints: [Int]) -> Int {
    return ints.reduce(0,+)
}
func multiply (ints: [Int]) -> Int {
    return ints.reduce(1,*)
}

func perform(_ operation: ([Int])-> Int,onInts ints : Int...) -> Int{
    return operation(ints)
}

perform(add, onInts: 9,3,2,1,4)
perform(multiply, onInts: 55,4)


func getOperationPerformer() -> ((([Int]) -> Int,Int...)-> Int){
    return perform
}

let myop = getOperationPerformer()
myop(add, 7,8,9)


