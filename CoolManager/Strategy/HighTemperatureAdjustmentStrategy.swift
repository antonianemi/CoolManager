class HighTemperatureAdjustmentStrategy: TemperatureAdjustmentStrategy {
    let name = "heat"
    let temperature = +1.0
    func adjust(_ refrigerator: Refrigerator) {
        refrigerator.compressor.stop()
        refrigerator.resistance.turnOn()
        refrigerator.fan.turnOff()
        refrigerator.light.turnOn()
        refrigerator.thermometro.temperature = refrigerator.thermometro.temperature + temperature
    }
}
