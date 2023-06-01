final class OffRefrigeratorFactory: RefrigeratorFactory {
    private let unit = TemperatureUnit.celsius
    private let interval = Double(5)
    
    func create() throws -> Refrigerator {
        let setPoint =           Temperature(value: 0, unit: unit, interval: interval)
        let maxTemperature =     Temperature(value: 35, unit: unit, interval: interval)
        let minTemperature =     Temperature(value: -5, unit: unit, interval: interval)
        let currentTemperature = Temperature(value: 10, unit: unit, interval: interval)
        let value = Refrigerator(setPoint: try SetPoint(temperature: currentTemperature,
                                                    temperatureGoal: setPoint,
                                                    maxTemperature: maxTemperature,
                                                    minTemperature: minTemperature),
                                 fan: Fan(isOn: false),
                                 door: Door(_locked: true, _open: false),
                                 compressor: Compressor(isOn: false),
                                 light: Light(isOn: false),
                                 resistance: Resistance(isOn: false))
        return value
    }
}
