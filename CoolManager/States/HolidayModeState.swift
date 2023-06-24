class HolidayModeState: RefrigeratorState {
    private let refrigerator: Refrigerator
    var name = "HolidayModeState"
    func configure() {
        
    }
    init(refrigerator: Refrigerator) {
        self.refrigerator = refrigerator
        self.configure()
    }
}
