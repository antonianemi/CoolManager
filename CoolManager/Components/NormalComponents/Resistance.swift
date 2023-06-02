final class Resistance:ResistanceProtocol  {
    internal var isOn: Bool
    
    init(isOn: Bool) {
        self.isOn = isOn
    }
    
    var isActive: Bool {
        return isOn
    }
    
    func turnOn() {
        isOn = true
    }
    
    func turnOff() {
        isOn = false
    }
    
    func printStatus() {
        print("Resistance: \(isActive)")
    }
}
