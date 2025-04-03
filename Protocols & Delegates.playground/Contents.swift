protocol AdvancedLifeSupport{
    func performCPR()
}

class EmergencyCallHandler{
    var delegate : AdvancedLifeSupport?
    func assessSituation(){
        print("Can you tell me what happend?")
    }
    func medicalEmergency () {
        delegate?.performCPR()
    }
}
struct Paramedic : AdvancedLifeSupport{
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR(){
        print("The paramedic does chest compressions , 30 per second.")
    }
}
class Doctor: AdvancedLifeSupport{
    init(handler:EmergencyCallHandler){
        handler.delegate = self
    }
    func performCPR() {
        print("The doctor does chest compressions, 30 per second.")
    }
    func useStethescope(){
        print("Listening for heart sounds.")
    }
}
class Surgeon : Doctor {
    override func performCPR() {
        super.performCPR()
        print("Sings staying alive by beegee")
    }
    func useElectricDrill(){
        print("whirreerr....")
    }
}
let emergencyStaff = EmergencyCallHandler()
let waqar = Surgeon(handler: emergencyStaff)

emergencyStaff.assessSituation()
emergencyStaff.medicalEmergency()
