class QuickCoolingState: RefrigeratorState {
    var name = "QuickCoolingState"
    
    private let refrigerator: Refrigerator
    func configure() {
        
    }
    init(refrigerator: Refrigerator) {
        self.refrigerator = refrigerator
        self.configure()
    }
}
