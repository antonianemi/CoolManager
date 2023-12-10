class HighTemperatureAdjustmentStrategy: TemperatureAdjustmentStrategy {
    static func == (lhs: HighTemperatureAdjustmentStrategy, rhs: HighTemperatureAdjustmentStrategy) -> Bool {
        return String(describing: lhs.self) == String(describing: rhs.self)
    }
    
    func adjustSettings(for refrigerator: Refrigerator) {
        refrigerator.compressor.stop()
        refrigerator.resistance.turnOn()
        refrigerator.fan.turnOff()
        refrigerator.light.turnOn()
    }
}
