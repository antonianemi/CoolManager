class EnergySaverState: RefrigeratorState {
    private let refrigerator: Refrigerator
    var name = "EnergySaverState"
    func configure() {
        
    }
    init(refrigerator: Refrigerator) {
        self.refrigerator = refrigerator
        self.configure()
    }
}
