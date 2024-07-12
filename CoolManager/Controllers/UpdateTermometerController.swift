import Foundation
class UpdateTermometerController {
    let thermometer:Thermometer
    init(thermometer: Thermometer) {
        self.thermometer = thermometer
    }
    func control(){
        self.thermometer.updateRandom()
    }
}
