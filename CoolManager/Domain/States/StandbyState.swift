class StandbyState: RefrigeratorState {
    var name = "StandbyState"
    
    private let refrigerator: Refrigerator
    
    func configure() {
       /* self.refrigerator.components.stopCompressor()
        self.refrigerator.components.turnLightOff()
        self.refrigerator.components.turnResistanceOff()
        self.refrigerator.components.turnFanOff()
        self.refrigerator.components.lockDoor()*/
    }
    
    init(refrigerator: Refrigerator) {
        self.refrigerator = refrigerator
        self.configure()
    }
}
