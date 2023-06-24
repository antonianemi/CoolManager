class DefrostState: RefrigeratorState {
    private let refrigerator: Refrigerator
    var name = "DefrostState"
    func configure() {
        
    }
    init(refrigerator: Refrigerator) {
        self.refrigerator = refrigerator
        self.configure()
    }
}
