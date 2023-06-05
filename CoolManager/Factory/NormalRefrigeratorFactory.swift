final class NormalRefrigeratorFactory: RefrigeratorFactory {
    private let unit = TemperatureUnit.celsius
    private let interval = Double(5)
    
    func create() throws -> Refrigerator {
        let setPoint =           Temperature(value: 20, unit: unit, interval: interval)
        let maxTemperature =     Temperature(value: 35, unit: unit, interval: interval)
        let minTemperature =     Temperature(value: -5, unit: unit, interval: interval)
        let currentTemperature = Temperature(value: 10, unit: unit, interval: interval)
        let value = Refrigerator("NormalMode",setPoint: try SetPoint(temperature: currentTemperature,
                                                    temperatureGoal: setPoint,
                                                    maxTemperature: maxTemperature,
                                                    minTemperature: minTemperature),
                                 fan: Fan(isOn: true),
                                 door: Door(_locked: true, _open: false),
                                 compressor: Compressor(isOn: true),
                                 light: Light(isOn: true),
                                 resistance: Resistance(isOn: true))
        return value
    }
}
