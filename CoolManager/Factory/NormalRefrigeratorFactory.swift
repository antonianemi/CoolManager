final class NormalRefrigeratorFactory: RefrigeratorFactory {
    func create() throws -> Refrigerator {
        let unit = TemperatureUnit.celsius
        let interval = Double(5)
        let stateName = "NormalMode"
        let temperatureGoal =    Temperature(20, unit, interval)
        let maxTemperature =     Temperature(35, unit, interval)
        let minTemperature =     Temperature(-5, unit, interval)
        let currentTemperature = Temperature(10, unit, interval)
        let setPoint = try SetPoint(temperature: currentTemperature,
                                    temperatureGoal: temperatureGoal,
                                    maxTemperature: maxTemperature,
                                    minTemperature: minTemperature)
        let fan = NormalFanFactory().create()  as! Fan
        let door = NormalDoorFactory().create()  as! Door
        let compressor = NormalCompressorFactory().create()  as! Compressor
        let light = NormalLightFactory().create() as! Light
        let resistance = NormalResistanceFactory().create() as! Resistance
        let value = TonyRefrigerator(currentTemperature: currentTemperature,
                                     temperatureGoal: temperatureGoal,
                                     maxTemperature: maxTemperature,
                                     minTemperature: minTemperature,
                                     stateName: stateName,
                                     setPoint: setPoint,
                                     fan: fan,
                                     door: door,
                                     compressor: compressor,
                                     light: light,
                                     resistance: resistance,
                                     interval: interval,
                                     unit: unit)
        
        return try value.create()
    }
}
