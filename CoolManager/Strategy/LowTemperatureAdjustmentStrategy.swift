class LowTemperatureAdjustmentStrategy: TemperatureAdjustmentStrategy {
    static func == (lhs: LowTemperatureAdjustmentStrategy, rhs: LowTemperatureAdjustmentStrategy) -> Bool {
        return String(describing: lhs.self) == String(describing: rhs.self)
    }
    
    func adjustSettings(for refrigerator: Refrigerator) {
        refrigerator.compressor.start()
        refrigerator.resistance.turnOff()
        refrigerator.fan.turnOn()
        refrigerator.light.turnOff()
    }
}
