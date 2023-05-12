class ChildLockState: RefrigeratorState {
    var name = "ChildLockState"
    private let refrigerator: Refrigerator
    func configure() {
        /*self.refrigerator.components.startCompressor()
        self.refrigerator.components.turnLightOn()
        self.refrigerator.components.turnResistanceOn()
        self.refrigerator.components.turnFanOn()*/
    }
    init(refrigerator: Refrigerator) {
        self.refrigerator = refrigerator
        self.configure()
    }
}
