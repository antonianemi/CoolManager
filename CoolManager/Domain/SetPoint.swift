import Foundation
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
    private var temp:Double = 0.0
    var timer:Timer = Timer()
    init(temperature: Temperature, temperatureGoal: Temperature, maxTemperature: Temperature, minTemperature: Temperature) throws {
        if temperatureGoal.unit != minTemperature.unit ||
            temperatureGoal.unit != maxTemperature.unit ||
            minTemperature.unit != maxTemperature.unit {
            throw TemperatureError.inconsistentUnit
        }
        if minTemperature.value == maxTemperature.value{
            throw TemperatureError.sameMinMaxValue
        }
        if temperatureGoal.value < minTemperature.value || temperatureGoal.value > maxTemperature.value{
            throw TemperatureError.outOfRangeSetPoint
        }
        self.temperature = temperature
        temperatureSetPoint = temperatureGoal
        self.minTemperature = minTemperature
        self.maxTemperature = maxTemperature
    }
    
    private func initializeTimer(){
        timer = Timer.scheduledTimer(timeInterval: 3.0,
                                         target: self,
                                         selector: #selector(timerAction),
                                         userInfo: nil,
                                         repeats: false)
    }
    
    private func fireTimer(){
        initializeTimer()
        timer.fire()
    }
    
    func up(){
        if canAddUp {
            temperatureSetPoint.pushUp()
            fireTimer()
        }
    }
    
    func down(){
        if canDropDown {
            temperatureSetPoint.pullDown()
            fireTimer()
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
    
    
    @objc func timerAction() {
        temp = temperatureSetPoint.value
        self.timer.invalidate()
    }
    func confirm(){
        
    }
}
