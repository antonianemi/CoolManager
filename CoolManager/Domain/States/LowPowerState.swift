class LowPowerState: RefrigeratorState {
    var name = "LowPowerState"
    private let refrigerator: Refrigerator
    func configure() {
        
    }
    init(refrigerator: Refrigerator) {
        self.refrigerator = refrigerator
        self.configure()
    }
}
