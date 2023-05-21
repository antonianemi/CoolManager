import Foundation
class RefrigeratorBuilder {
    private var refrigerator: Refrigerator
    
    init() {
        refrigerator = Refrigerator()
    }
    
    func build() -> Refrigerator {
        refrigerator.processTemperature()
        return refrigerator
    }
}
