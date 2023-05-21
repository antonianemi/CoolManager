class NightModeState: RefrigeratorState {
    var name = "NightModeState"
    
    private let refrigerator: Refrigerator
    
    func configure() {
        self.refrigerator.compressor.start()
        self.refrigerator.light.turnOff()
        self.refrigerator.resistance.turnOff()
        self.refrigerator.fan.turnOff()
        self.refrigerator.door.lock()
    }
    
    init(refrigerator: Refrigerator) {
        self.refrigerator = refrigerator
        self.configure()
        name = "NightModeState"
    }
}

