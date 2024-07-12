class LowTemperatureAdjustmentStrategy: TemperatureAdjustmentStrategy {
    let name = "cool"
    let temperature = -1.0
    func adjust(_ refrigerator: Refrigerator) {
        refrigerator.compressor.start()
        refrigerator.resistance.turnOff()
        refrigerator.fan.turnOn()
        refrigerator.light.turnOff()
        refrigerator.thermometro.temperature = refrigerator.thermometro.temperature + temperature
    }
}
