import Foundation
class ResistanceController {
    private var resistance: Resistance
    var coolManager = CoolManager.shared

    init() {
        self.resistance = coolManager.refrigerator.resistance
    }

    func toggle() {
        if resistance.isOn {
            turnOff()
        } else {
            turnOn()
        }
    }

    func turnOn() {
        coolManager.turnResistanceOn()
    }

    func turnOff() {
        coolManager.turnResistanceOff()
    }
}
