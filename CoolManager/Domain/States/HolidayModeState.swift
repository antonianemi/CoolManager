class HolidayModeState: RefrigeratorState {
    var name = "HolidayModeState"
    private let refrigerator: Refrigerator
    func configure() {
        
    }
    init(refrigerator: Refrigerator) {
        self.refrigerator = refrigerator
        self.configure()
    }
}
