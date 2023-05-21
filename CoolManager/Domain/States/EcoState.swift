class EcoState: RefrigeratorState {
    private let refrigerator: Refrigerator
    var name = "EcoState"
    func configure() {
        self.refrigerator.compressor?.stop()
        self.refrigerator.light?.turnOff()
        self.refrigerator.resistance?.turnOff()
        self.refrigerator.door?.close()
    }
    
    init(refrigerator: Refrigerator) {
        self.refrigerator = refrigerator
        self.configure()
    }
}

