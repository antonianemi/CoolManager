import Foundation

final class TonyRefrigerator: RefrigeratorFactory {
    var currentTemperature: Temperature
    var temperatureGoal: Temperature
    var maxTemperature: Temperature
    var minTemperature: Temperature
    var stateName:String=""
    var setPoint:SetPoint
    var fan:Fan
    var door:Door
    var compressor:Compressor
    var light:Light
    var resistance:Resistance
    var interval:Double = 0.5
    var unit:TemperatureUnit = TemperatureUnit.celsius
    
    init(currentTemperature: Temperature,
         temperatureGoal: Temperature,
         maxTemperature: Temperature,
         minTemperature: Temperature,
         stateName:String,
         setPoint:SetPoint,
         fan:Fan,
         door:Door,
         compressor:Compressor,
         light:Light,
         resistance:Resistance,
         interval:Double,
         unit:TemperatureUnit
    ){
        self.currentTemperature = currentTemperature
        self.temperatureGoal = temperatureGoal
        self.maxTemperature = maxTemperature
        self.minTemperature = minTemperature
        self.stateName = stateName
        self.setPoint = setPoint
        self.fan = fan
        self.door = door
        self.compressor = compressor
        self.resistance = resistance
        self.interval = interval
        self.unit = unit
        self.fan = NormalFanFactory().create() as! Fan
        self.door = NormalDoorFactory().create() as! Door
        self.compressor = NormalCompressorFactory().create() as! Compressor
        self.light = NormalLightFactory().create() as! Light
        self.resistance  = NormalResistanceFactory().create() as! Resistance
    }
    
    
    func create() throws -> Refrigerator {
        let value = Refrigerator(setPoint: try SetPoint(temperature: currentTemperature,
                                                        temperatureGoal: temperatureGoal,
                                                        maxTemperature: maxTemperature,
                                                        minTemperature: minTemperature),
                                 fan: fan,
                                 door: door,
                                 compressor: compressor,
                                 light: light,
                                 resistance: resistance)
        return value
    }
}
