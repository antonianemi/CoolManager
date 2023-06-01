enum TemperatureError: Error {
    case inconsistentUnit
    case outOfRangeSetPoint
    case sameMinMaxValue
}

class SetPoint{
    private(set) var temperature: Temperature
    private(set) var temperatureSetPoint: Temperature
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
        self.temperatureSetPoint = temperatureGoal
        self.minTemperature = minTemperature
        self.maxTemperature = maxTemperature
    }
    
    func upScaleSetPoint(){
        if canAddUp() {
            temperatureSetPoint.pushUp()
        }
    }
    
    func canAddUp()->Bool{
        return temperatureSetPoint.value < maxTemperature.value
    }
    
    func downScaleSetPoint(){
        if canDropDown() {
            temperatureSetPoint.pullDown()
        }
    }
    
    func canDropDown()->Bool{
        return temperatureSetPoint.value > minTemperature.value
    }
    
    func getImageNumber()->Int{
        let currentSetPoint = temperatureSetPoint.value
        let minTemp = minTemperature.value
        let maxTemp = maxTemperature.value
        let totalImages: Int = 42
        var imageNumber = Int(((currentSetPoint - minTemp) / (maxTemp - minTemp)) * Double(totalImages))
        if imageNumber < 0 { imageNumber = imageNumber * -1 }
        return imageNumber
    }
    
}
