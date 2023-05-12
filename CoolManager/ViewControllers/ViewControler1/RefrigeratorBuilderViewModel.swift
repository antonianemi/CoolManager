class RefrigeratorBuilderViewModel {
    private var builder: RefrigeratorBuilder
    
    init() {
        builder = RefrigeratorBuilder()
    }
    
    func buildRefrigerator() -> Refrigerator {
        let refrigerator = builder.build()
        return refrigerator
    }
    
    func setNormalState() {
        builder.setNormalState()
    }
    
    func setEcoState() {
        builder.setEcoState()
    }
}
