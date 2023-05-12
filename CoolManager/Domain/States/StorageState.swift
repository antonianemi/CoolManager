class StorageState: RefrigeratorState {
    var name = "StorageState"
    private let refrigerator: Refrigerator
    func configure() {
        
    }
    init(refrigerator: Refrigerator) {
        self.refrigerator = refrigerator
        self.configure()
    }
}
