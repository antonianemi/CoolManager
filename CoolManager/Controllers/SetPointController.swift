class SetPointController {
    var coolManager = CoolManager.shared
    init() {
        //self.setPoint = coolManager.refrigerator.setPoint
    }
    
    func increase() {
        coolManager.moveSetPointUp()
    }
    
    func decrease() {
        coolManager.moveSetPointDown()
    }
}
