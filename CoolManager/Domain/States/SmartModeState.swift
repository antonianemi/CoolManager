class SmartModeState: RefrigeratorState {
    private let refrigerator: Refrigerator
    var name = "SmartModeState"
    func configure() {
    }
    init(refrigerator: Refrigerator) {
        self.refrigerator = refrigerator
        self.configure()
    }
}
