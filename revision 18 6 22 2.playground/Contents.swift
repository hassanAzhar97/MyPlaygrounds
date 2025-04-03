import UIKit

//var greeting = "Hello, playground"

var maybeAnInt : Optional<Int>

maybeAnInt = .some(3)

maybeAnInt = .none

let baseUrlString = "https://itunes.apple.com/search?"

enum Entity : String {
     case song = "song"
    case app = "SoftwARE"
}
enum Endpoint{
    case term(String)
    case entity (Entity, term : String , limit : Int)
    
//    var encoded : String {
//        switch self{
//        case .term(__): break
//         //   return "entity = "+ encode(term)
//        case let.entity(entity,term,limit):
//            return "entitty="
//    }
//}
//
//}










enum Direction{
    case up
    case down
    case right
    case left
}


var direction = Direction.up

direction = .down

let left : Direction = .left

func moveIn (direction: Direction) {
    print("Moved\(direction)")
}

moveIn(direction: .right)


enum Heading : Int {
    case north , south , east ,west
}

let heading = Heading (rawValue: 0)

let invalidHeading = Heading(rawValue: 10)

enum ClockPosition : Double {
    case one = 1
    case oneThirty = 1.5
    case two = 2 , three , four , five , six , seven , eight , nine , ten , eleven
}

ClockPosition.two.rawValue

enum ProVerb : String {
    case fortune = "Fortune favors Old"
    case late = "Better late than never"
    case practice = "Practice makes permanent"
    // type properties
    
    static var allValues : [ProVerb] = [.fortune , .late , .practice]
    
    // instance properties
    
    var uppercased : String {
        return rawValue.uppercased()
    }
    
    // type methods
    
    static func random()->ProVerb {
        return allValues[Int(arc4random_uniform(UInt32(allValues.count)))]
    }
  
    //ProVerb.fortune.uppercased
    
   // ProVerb.random().rawValue
    
}





//
var string : String?

struct MyStruct {
    // properties//
    // initializers //
    //methods//
    // subscripts//
    
    
}

struct Coordinates3D : Hashable {
    var x : Int
    let y : Int
    let z : Int
    var label : String
    
    var hashValue: Int{
        return "\(label)-\(x)-\(y)-\(z)".hashValue
    }

    //initilizers//
    init(x: Int, y: Int , z: Int , label : String? = "unlabeled"){
        self.x=x
        self.y=y
        self.z=z
        self.label = label!
    }
    init (x:Int){
        self.init(x:x,y:x,z:x)
    }
    //ttype methods
    static func distanceFrom (coordinate a : Coordinates3D, toCoordinate b: Coordinates3D) -> Int {
        let x = Double(a.x - b.x)
        let y = Double(a.y - b.y)
        let z = Double(a.z - b.z)
        let distance = ((x * x) + (y * y) + (z * z)).squareRoot()
        return Int (distance.rounded())
    }
    // Instance methods//
    //
    func distanceFrom (coordinate : Coordinates3D)->Int
    {
        return Coordinates3D.distanceFrom(coordinate: coordinate, toCoordinate: self)
    }
    mutating func moveRight(){
        x += 1
    }
    mutating func moveRandom () {
        let r = Int(arc4random_uniform(UInt32.max))
        self = Coordinates3D(x:r,y:r,z:r,label: "(\(r), \(r) , \(r)")
    }
    static func == (left : Coordinates3D, right : Coordinates3D) -> Bool {
        return (left.x,left.y,left.z,left.label) == (right.x,right.y,right.z,right.label)
    }
}

let origin = Coordinates3D(x: 0, y: 0, z: 0, label: "Origin")

var destination = Coordinates3D(x: 10)


let setOfCoordinates3Ds: Set = [origin,destination]


Coordinates3D.distanceFrom(coordinate: origin, toCoordinate: destination)













//



//



//

//

class Teacher {
    var students = [Student]()
    deinit {
        print("Teacher Will Be Deallocated")
    }
}
class Student {
    unowned let teacher : Teacher
    init (teacher : Teacher){
        self.teacher = teacher
    }
    deinit
    {
        print("Student Will be de allocated")
    }
}
var mrUsMAN : Teacher? = Teacher()

var hassan : Student? = Student(teacher: mrUsMAN!)

mrUsMAN?.students.append(hassan!)

mrUsMAN = nil

hassan = nil

var teacher2 : Teacher? = Teacher()

teacher2 = nil

//

class Band {
    var drummer : Drummer
    init (drummer: Drummer){
        self.drummer = drummer
    }
    deinit{
        print("Band Will Be De Alocatted")
    }
    
}



class Drummer {
    weak var band : Band?
    
    deinit {
        print("Drummer Will be De Allocated")
    }
}

var neil : Drummer? = Drummer()

var rush : Band? = Band(drummer: neil!)

neil?.band = rush

neil = nil

rush = nil
//
//
//
class Alpha{
    deinit {
        print("Alpha will be deallocated")
    }
}

//
class Bravo {
    let alpha = Alpha()
    
    lazy var printOutValues: () -> Void = {
        [unowned self] in
        print("\(self),\(self.alpha)")
    }
    lazy var printOutAlphaValue:() -> Void = {
        [weak alpha = self.alpha] in print("\(String(describing : alpha))")
    }
    deinit {
        print("Bravo will be de allocated")
    
}
}
    var bravo: Bravo? = Bravo()

    bravo?.printOutValues

    bravo?.printOutAlphaValue

    bravo = nil

////
////
/////
/////
/////
////
////
/////
///
///
///
///
///

class MyClass {
    //properties   //   initializers ,  ///  // deinitilizers , methods  , // subscripts
}
class Vehicle {
    //type properties
    static var count = 0
    
    //   instance properties
    
    var passengerCapacity = 4
    
    let zeroTo60 : Float
    
    var color : UIColor
    //
    //
    //
    //    Initilizer
    
    init(passengers: Int, zeroTo60: Float, color: UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)) {
        
        passengerCapacity = passengers
        
        self.zeroTo60 = zeroTo60
        
        self.color = color
        
        Vehicle.count += 1
}
    convenience init (zeroTo60 : Float){
        self.init ( passengers : 4 , zeroTo60 : zeroTo60)
    }
    convenience init (){
        self.init(zeroTo60: 6.0)
    }
    // deinitilizer
    
    deinit {
        Vehicle.count -= 1
    }
    // Instance methods
    
    func start(){
        print("Silence")
    }
    //   Type Methods
    static func printCount () {
        print("Count",count)
    }
}

class ElectricVehicle : Vehicle,CustomStringConvertible {
    
    let rangePerCharge: Int
    
    var description: String{
        return "\(ElectricVehicle.self):\n\tPassengers : \(passengerCapacity)\n\t\(zeroTo60) secpnds \n\t \(rangePerCharge ) miles"
    }
    init (passengers : Int , zeroTo60 : Float , rangePerCharge : Int ){
        
        self.rangePerCharge=rangePerCharge
        
        super.init(passengers:passengers, zeroTo60 : zeroTo60)
    }
    convenience init (){
        
        self.init (passengers : 4 , zeroTo60 : 6.0 , rangePerCharge : 215)
    }
    
    override func start() {
        print("(silence)")
    }
    
}
class MotorVehicle : Vehicle {
    
    let fuelEfficiency: Int
    
    init(passengers: Int, zeroTo60: Float, fuelEfficiency: Int) {
        
        self.fuelEfficiency = fuelEfficiency
        
        super.init(passengers: passengers, zeroTo60: zeroTo60)
    }
}



let teslaModelS = ElectricVehicle(passengers: 4, zeroTo60: 2.5, rangePerCharge: 315)

print(teslaModelS)

var teslaModel3 : ElectricVehicle? = ElectricVehicle ()

teslaModel3 = nil

ElectricVehicle.count

let p100D = teslaModelS
p100D.color = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
teslaModelS.color

//   calling methods

teslaModelS.start()
Vehicle.printCount()

let bugatti = MotorVehicle(passengers: 2, zeroTo60: 2.3, fuelEfficiency: 8)
