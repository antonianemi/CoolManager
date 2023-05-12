class MaintenanceModeState: RefrigeratorState {
    var name = "MaintenanceModeState"
    private let refrigerator: Refrigerator
    func configure() {
        
    }
    init(refrigerator: Refrigerator) {
        self.refrigerator = refrigerator
        self.configure()
    }
}
