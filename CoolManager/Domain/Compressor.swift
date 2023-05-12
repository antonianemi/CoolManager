class Compressor: RefrigeratorComponent  {
    private var isOn: Bool = false
    
    var isActive: Bool {
        return isOn
    }
    
    func start() {
        isOn = true
    }
    
    func stop() {
        isOn = false
    }
    
    func printStatus() {
        print("Compressor: \(isActive)")
    }
}
