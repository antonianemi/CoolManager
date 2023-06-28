final class NormalRefrigeratorFactory: RefrigeratorFactory {
    private let unit = TemperatureUnit.celsius
    private let interval = Double(5)
    
    func create()-> Refrigerator {
        let setPoint =           Temperature(20, unit, interval)
        let maxTemperature =     Temperature(35, unit, interval)
        let minTemperature =     Temperature(-5, unit, interval)
        let currentTemperature = Temperature(10, unit, interval)
        let value = Refrigerator("NormalMode",setPoint: SetPoint(temperature: currentTemperature,
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
