import Foundation
enum TemperatureError: Error {
    case inconsistentUnit
    case outOfRangeSetPoint
    case sameMinMaxValue
}

class SetPoint {
    private(set) var temperature: Temperature
    private(set) var temperatureSetPoint: Temperature
    private(set) var maxTemperature: Temperature
    private(set) var minTemperature: Temperature
    private var temp:Double = 0.0
    
    init(temperature: Temperature,
         temperatureGoal: Temperature,
         maxTemperature: Temperature,
         minTemperature: Temperature){
        if temperatureGoal.unit != minTemperature.unit ||
            temperatureGoal.unit != maxTemperature.unit ||
            minTemperature.unit != maxTemperature.unit {
            fatalError("inconsistentUnit")
        }
        if minTemperature.value == maxTemperature.value{
            fatalError("sameMinMaxValue")
        }
        if temperatureGoal.value < minTemperature.value ||
            temperatureGoal.value > maxTemperature.value {
            fatalError("outOfRangeSetPoint")
        }
        self.temperature = temperature
        self.temperatureSetPoint = temperatureGoal
        self.minTemperature = minTemperature
        self.maxTemperature = maxTemperature
    }
    
    func up(){
        if canAddUp {
            temperatureSetPoint.pushUp()
        }
    }
    
    func down(){
        if canDropDown {
            temperatureSetPoint.pullDown()
        }
    }
    
    var canAddUp: Bool {
        return temperatureSetPoint.value < maxTemperature.value
    }

    var canDropDown: Bool {
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
    
    func updateTemperature(){
        if temperature.value > temperatureSetPoint.value {
            temperature.value = temperature.value - 0.1
        }
        else if temperature.value < temperatureSetPoint.value {
            temperature.value = temperature.value + 0.1
        }
    }
    
    func confirm(){
        
    }
    
    func printStatus() {
     print("Temperature: \(temperature.stringValueOnlyNumber)")
     print("temperatureSetPoint: \(temperatureSetPoint.stringValueOnlyNumber)")
     print("maxTemperature: \(maxTemperature.stringValueOnlyNumber)")
     print("minTemperature: \(minTemperature.stringValueOnlyNumber)")
    }
    
}
