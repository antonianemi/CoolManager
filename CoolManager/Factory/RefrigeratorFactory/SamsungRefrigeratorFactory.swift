import Foundation
final class SamsungRefrigeratorFactory: RefrigeratorFactory {
    let unit = TemperatureUnit.celsius
    let interval = Double(5)
    let stateName = "NormalMode"
    let temperatureGoal = Double(20)
    let maxTemperature = Double(35)
    let minTemperature = Double(-5)
    let currentTemperature = Double(10)
    let fan = SamsumgFanFactory().create() as! Fan
    let door = SamsumgDoorFactory().create()  as! Door
    let compressor = SamsumgCompressorFactory().create()  as! Compressor
    let light = SamsumgLightFactory().create() as! Light
    let resistance = SamsumgResistanceFactory().create() as! Resistance
    func create() -> Refrigerator {
        return TonyRefrigerator(currentTemperature: Temperature(temperatureGoal, unit, interval),
                                     temperatureGoal: Temperature(maxTemperature, unit, interval),
                                     maxTemperature: Temperature(minTemperature, unit, interval),
                                     minTemperature: Temperature(currentTemperature, unit, interval),
                                     stateName: stateName,
                                     fan: fan,
                                     door: door,
                                     compressor: compressor,
                                     light: light,
                                     resistance: resistance,
                                     interval: interval,
                                     unit: unit).create()
          
    }
}
