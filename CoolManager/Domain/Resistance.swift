class Resistance: RefrigeratorComponent  {
    private var isOn: Bool = false
    
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
