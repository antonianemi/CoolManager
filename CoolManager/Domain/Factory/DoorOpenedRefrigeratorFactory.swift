final class DoorOpenedRefrigeratorFactory: RefrigeratorFactory {
    private let unit = TemperatureUnit.celsius
    private let interval = 0.5
    
    func create() throws -> Refrigerator {
        let setPoint =           Temperature(value: 20, unit: unit, interval: interval)
        let maxTemperature =     Temperature(value: 35, unit: unit, interval: interval)
        let minTemperature =     Temperature(value: -5, unit: unit, interval: interval)
        let currentTemperature = Temperature(value: 10, unit: unit, interval: interval)
        let _setPoint = try SetPoint(temperature: currentTemperature,
                                 temperatureGoal: setPoint,
                                 maxTemperature: maxTemperature,
                                 minTemperature: minTemperature)
        let fan = Fan(isOn: false)
        let door = Door(_locked: false, _open: true)
        let compressor = Compressor(isOn: false)
        let light = Light(isOn: false)
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
