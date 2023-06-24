class FreshProduceState: RefrigeratorState {
    private let refrigerator: Refrigerator
    var name = "FreshProduceState"
    func configure() {
    }
    init(refrigerator: Refrigerator) {
        self.refrigerator = refrigerator
        self.configure()
    }
}
