class StandbyState: RefrigeratorState {
    private let refrigerator: Refrigerator
    var name = "StandbyState"
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
