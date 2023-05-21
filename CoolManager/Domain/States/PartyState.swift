class PartyState: RefrigeratorState {
    private let refrigerator: Refrigerator
    var name = "PartyState"
    func configure() {
        /*self.refrigerator.compressor?.startCompressor()
        self.refrigerator.components.turnLightOn()
        self.refrigerator.components.turnResistanceOff()
        self.refrigerator.components.turnFanOn()
        self.refrigerator.components.unlockDoor()
         */
    }
    init(refrigerator: Refrigerator) {
        self.refrigerator = refrigerator
        self.configure()
    }
}






