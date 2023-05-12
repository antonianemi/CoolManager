class DefrostState: RefrigeratorState {
    var name = "DefrostState"
    private let refrigerator: Refrigerator
    func configure() {
        
    }
    init(refrigerator: Refrigerator) {
        self.refrigerator = refrigerator
        self.configure()
    }
}
