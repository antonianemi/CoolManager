class QuickCoolingState: RefrigeratorState {
    private let refrigerator: Refrigerator
    var name = "QuickCoolingState"
    func configure() {
        
    }
    init(refrigerator: Refrigerator) {
        self.refrigerator = refrigerator
        self.configure()
    }
}
