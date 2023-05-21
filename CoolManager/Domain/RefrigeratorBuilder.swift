import Foundation
class RefrigeratorBuilder {
    private var refrigerator: Refrigerator
    
    init() {
        refrigerator = NormalRefrigeratorFactory().create()
    }
    
    func build() -> Refrigerator {
        refrigerator.processTemperature()
        return refrigerator
    }
}
