class RefrigeratorBuilder {
    private var refrigerator: Refrigerator
    
    init() {
        refrigerator = Refrigerator()
    }
    
    func build() -> Refrigerator {
        refrigerator.processTemperature()
        return refrigerator
    }

    func setNormalState() -> RefrigeratorBuilder{
        refrigerator.setState(NormalState(refrigerator: refrigerator))
        return self
    }
    
    func setEcoState() -> RefrigeratorBuilder{
        refrigerator.setState(EcoState(refrigerator: refrigerator))
        return self
    }
}
