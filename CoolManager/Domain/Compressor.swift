class Compressor:CompressorProtocol  {
    internal var isOn: Bool
    
    init(isOn: Bool) {
        self.isOn = isOn
    }
    
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
