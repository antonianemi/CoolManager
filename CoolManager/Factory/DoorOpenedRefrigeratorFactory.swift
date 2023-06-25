final class DoorOpenedRefrigeratorFactory: RefrigeratorFactory {
    private let unit = TemperatureUnit.celsius
    private let interval = 0.5
    
    func create() throws -> Refrigerator {
        let setPoint =           Temperature(20, unit, interval)
        let maxTemperature =     Temperature(35, unit, interval)
        let minTemperature =     Temperature(-5, unit, interval)
        let currentTemperature = Temperature(10, unit, interval)
        let _setPoint = try SetPoint(temperature: currentTemperature,
                                 temperatureGoal: setPoint,
                                 maxTemperature: maxTemperature,
                                 minTemperature: minTemperature)
        let fan = Fan(isOn: false)
        let door = Door(_locked: false, _open: true)
        let compressor = Compressor(isOn: false)
        let light = Light(isOn: true)
        let resistance = Resistance(isOn: false)
        
        let value = Refrigerator(setPoint: _setPoint,
                                 fan: fan,
                                 door: door,
                                 compressor: compressor,
                                 light: light,
                                 resistance: resistance)
        return value
    }
}
