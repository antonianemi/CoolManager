class MaintenanceModeState: RefrigeratorState {
    private let refrigerator: Refrigerator
    var name = "MaintenanceModeState"
    func configure() {
        
    }
    init(refrigerator: Refrigerator) {
        self.refrigerator = refrigerator
        self.configure()
    }
}
