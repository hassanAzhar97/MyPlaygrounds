import UIKit

//var greeting = "Hello, playground"
//let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
//let blackHeart = "\u{2665}"      // ♥,  Unicode scalar U+2665
//let sparklingHeart = "\u{1F496}" // 💖, Unicode scalar U+1F496
//print(dollarSign,blackHeart,sparklingHeart)
enum Activity {
    case boared
    case running (destination : String)
    case singing (topic : String)
    case talking (volume : Int)
    
}
let talking = Activity.talking (volume :12345)
print(talking)
