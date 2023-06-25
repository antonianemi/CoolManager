final class DefrostingRefrigeratorFactory: RefrigeratorFactory {
    private let unit = TemperatureUnit.celsius
    private let interval = 0.5
    
    func create() throws -> Refrigerator {
        let setPoint =           Temperature(20, unit, interval)
        let maxTemperature =     Temperature(35, unit, interval)
        let minTemperature =     Temperature(-5, unit, interval)
        let currentTemperature = Temperature(10, unit, interval)
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
