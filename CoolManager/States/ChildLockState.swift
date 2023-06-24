class ChildLockState: RefrigeratorState {
    private let refrigerator: Refrigerator
    var name = "ChildLockState"
    func configure() {
        self.refrigerator.compressor.start()
        self.refrigerator.light.turnOn()
        self.refrigerator.resistance.turnOn()
        self.refrigerator.fan.turnOn()
    }
    init(refrigerator: Refrigerator) {
        self.refrigerator = refrigerator
        self.configure()
    }
}
