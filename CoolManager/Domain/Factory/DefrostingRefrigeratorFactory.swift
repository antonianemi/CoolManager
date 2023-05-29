final class DefrostingRefrigeratorFactory: RefrigeratorFactory {
    private(set) var unit:TemperatureUnit
    
    init(_ unit: TemperatureUnit) {
        self.unit = unit
    }
    func create() throws -> Refrigerator {
        let setPoint = Temperature(value: 20, unit: unit)
        let maxTemperature = Temperature(value: 35, unit: unit)
        let minTemperature = Temperature(value: -5, unit: unit)
        let currentTemperature = Temperature(value: -5, unit: unit)
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
