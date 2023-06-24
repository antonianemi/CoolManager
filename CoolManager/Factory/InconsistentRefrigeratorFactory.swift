final class InconsistentRefrigeratorFactory: RefrigeratorFactory {
    private let interval = Double(5)
    
    func create() throws -> Refrigerator {
        let setPoint =           Temperature(value: 20, unit: .celsius, interval: interval)
        let maxTemperature =     Temperature(value: 35, unit: .fahrenheit, interval: interval)
        let minTemperature =     Temperature(value: -5, unit: .celsius, interval: interval)
        let currentTemperature = Temperature(value: 10, unit: .celsius, interval: interval)
        
        let value = Refrigerator("InconsistentMode", setPoint: try SetPoint(temperature: currentTemperature,
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
