class StorageState: RefrigeratorState {
    private let refrigerator: Refrigerator
    var name = "StorageState"
    func configure() {
        
    }
    init(refrigerator: Refrigerator) {
        self.refrigerator = refrigerator
        self.configure()
    }
}
