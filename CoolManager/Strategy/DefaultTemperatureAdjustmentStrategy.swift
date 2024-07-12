class DefaultTemperatureAdjustmentStrategy: TemperatureAdjustmentStrategy {
    let name = "default"
    let temperature = 0.0
    func adjust(_ refrigerator: Refrigerator) {
        refrigerator.compressor.stop()
        refrigerator.resistance.turnOff()
        refrigerator.fan.turnOn()
        refrigerator.light.turnOff()
        refrigerator.thermometro.temperature = refrigerator.thermometro.temperature + temperature
    }
}
