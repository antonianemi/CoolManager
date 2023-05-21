class StandbyState: RefrigeratorState {
    var name = "StandbyState"
    
    private let refrigerator: Refrigerator
    
    func configure() {
        self.refrigerator.compressor.stop()
        self.refrigerator.light.turnOff()
        self.refrigerator.resistance.turnOff()
        self.refrigerator.fan.turnOff()
        self.refrigerator.door.lock()
    }
    
    init(refrigerator: Refrigerator) {
        self.refrigerator = refrigerator
        self.configure()
    }
}
