final class DefrostingRefrigeratorFactory: RefrigeratorFactory {
    private let unit = TemperatureUnit.celsius
    private let interval = 0.5
    
    func create() throws -> Refrigerator {
        let setPoint =           Temperature(value: 20, unit: unit, interval: interval)
        let maxTemperature =     Temperature(value: 35, unit: unit, interval: interval)
        let minTemperature =     Temperature(value: -5, unit: unit, interval: interval)
        let currentTemperature = Temperature(value: 10, unit: unit, interval: interval)
        let _setPoint = try SetPoint(temperature: currentTemperature, temperatureGoal: setPoint , maxTemperature: maxTemperature, minTemperature: minTemperature)
        let value = Refrigerator(setPoint: _setPoint,
                                 fan: Fan(isOn: true),
                                 door: Door(_locked: true, _open: false),
                                 compressor: Compressor(isOn: true),
                                 light: Light(isOn: false),
                                 resistance: Resistance(isOn: false))
        return value
    }
}
