final class InconsistentRefrigeratorFactory: RefrigeratorFactory {
    private let interval = Double(5)
    
    func create() -> Refrigerator {
        let setPoint =           Temperature(20, .celsius, interval)
        let maxTemperature =     Temperature(35, .fahrenheit, interval)
        let minTemperature =     Temperature(-5, .celsius, interval)
        let currentTemperature = Temperature(10, .celsius, interval)
        
        let value = Refrigerator("InconsistentMode", setPoint: SetPoint(temperature: currentTemperature,
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
