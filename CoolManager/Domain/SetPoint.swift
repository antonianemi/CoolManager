enum TemperatureError: Error {
    case inconsistentUnit
    case outOfRangeSetPoint
    case sameMinMaxValue
}

class SetPoint{
    private(set) var temperature: Temperature
    private(set) var temperatureGoal: Temperature
    private(set) var maxTemperature: Temperature
    private(set) var minTemperature: Temperature
    init(temperature: Temperature, temperatureGoal: Temperature, maxTemperature: Temperature, minTemperature: Temperature) throws {
        if temperatureGoal.unit != minTemperature.unit ||
            temperatureGoal.unit != maxTemperature.unit ||
            minTemperature.unit != maxTemperature.unit {
            throw TemperatureError.inconsistentUnit
        }
        if temperatureGoal.value < minTemperature.value || temperatureGoal.value > maxTemperature.value{
            throw TemperatureError.outOfRangeSetPoint
        }
        
        if minTemperature.value == maxTemperature.value{
            throw TemperatureError.sameMinMaxValue
        }
        
        
        self.temperature = temperature
        self.temperatureGoal = temperatureGoal
        self.minTemperature = minTemperature
        self.maxTemperature = maxTemperature
    }
    
    func upScaleSetPoint(){
        if canAddUp() {
            temperatureGoal = Temperature(value: temperatureGoal.value + 5, unit: .celsius)
        }
    }
    
    func canAddUp()->Bool{
        return temperatureGoal.value < maxTemperature.value
    }
    
    func downScaleSetPoint(){
        if temperatureGoal.value >= temperature.value {
            temperatureGoal = Temperature(value: temperatureGoal.value - 5, unit: .celsius)
        }
    }
    
    func getImageNumber()->Int{
        let currentSetPoint = temperatureGoal.value
        let minTemp = minTemperature.value
        let maxTemp = maxTemperature.value
        let totalImages: Int = 42
        var imageNumber = Int(((currentSetPoint - minTemp) / (maxTemp - minTemp)) * Double(totalImages))
        if imageNumber < 0 { imageNumber = imageNumber * -1 }
        return imageNumber
    }
    
}
