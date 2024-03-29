class NormalState: RefrigeratorState {
    var name = "NormalState"
    private let refrigerator: Refrigerator
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
