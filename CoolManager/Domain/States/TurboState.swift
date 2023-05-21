class TurboState: RefrigeratorState {
    var name: String = "TurboState"
    
    private let refrigerator: Refrigerator
    
    func configure() {
        self.refrigerator.compressor.start()
        self.refrigerator.light.turnOn()
        self.refrigerator.resistance.turnOn()
        self.refrigerator.fan.turnOn()
        self.refrigerator.door.unlock()
    }
    
    init(refrigerator: Refrigerator) {
        self.refrigerator = refrigerator
        self.configure()
    }
}
