class DefaultTemperatureAdjustmentStrategy: TemperatureAdjustmentStrategy {
    static func == (lhs: DefaultTemperatureAdjustmentStrategy, rhs: DefaultTemperatureAdjustmentStrategy) -> Bool {
        return String(describing: lhs.self) == String(describing: rhs.self)
    }
    
    func adjustSettings(for refrigerator: Refrigerator) {
        refrigerator.compressor.stop()
        refrigerator.resistance.turnOff()
        refrigerator.fan.turnOn()
        refrigerator.light.turnOff()
    }
}
