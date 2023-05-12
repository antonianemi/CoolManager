class FreshProduceState: RefrigeratorState {
    var name = "FreshProduceState"
    
    private let refrigerator: Refrigerator
    func configure() {
    }
    init(refrigerator: Refrigerator) {
        self.refrigerator = refrigerator
        self.configure()
    }
}
