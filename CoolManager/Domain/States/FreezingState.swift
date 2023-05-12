class FreezingState: RefrigeratorState {
    private let refrigerator: Refrigerator
    var name = "FreezingState"
    func configure() {
        
    }
    init(refrigerator: Refrigerator) {
        self.refrigerator = refrigerator
        self.configure()
    }
}
