class EcoState: RefrigeratorState {
    private let refrigerator: Refrigerator
    var name = "EcoState"
    func configure() {
        /*self.refrigerator.components.stopCompressor()
        self.refrigerator.components.turnLightOff()
        self.refrigerator.components.turnResistanceOff()
        self.refrigerator.components.turnFanOff()*/
    }
    
    init(refrigerator: Refrigerator) {
        self.refrigerator = refrigerator
        self.configure()
    }
}

