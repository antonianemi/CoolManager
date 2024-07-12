import Foundation

struct TemperatureControlSystem {
    var currentTemp: Double
    var desiredTemp: Double
    var coolingOn: Bool
    var heatingOn: Bool
    let coolingRate: Double
    let heatingRate: Double
    let insulationFactor: Double
    let ambientTemps: [Double]
    
    mutating func adjustTemperature() {
        // Adjust temperature due to ambient heat
        currentTemp += insulationFactor * (desiredTemp - currentTemp)
        
        // Determine if we need to cool or heat
        if currentTemp > desiredTemp {
            coolingOn = true
            heatingOn = false
            currentTemp -= coolingRate
            // Ensure we do not overcool
            if currentTemp < desiredTemp {
                currentTemp = desiredTemp
                coolingOn = false
            }
        } else if currentTemp < desiredTemp {
            heatingOn = true
            coolingOn = false
            currentTemp += heatingRate
            // Ensure we do not overheat
            if currentTemp > desiredTemp {
                currentTemp = desiredTemp
                heatingOn = false
            }
        }
        
        // Turn off mechanisms when the desired temperature is reached
        if currentTemp == desiredTemp {
            coolingOn = false
            heatingOn = false
        }
    }
    
    func logTemperature(day: Int) {
        var status: String
        if coolingOn {
            status = "Cooling"
        } else if heatingOn {
            status = "Heating"
        } else {
            status = "Stable"
        }
        
        print("Day \(day):")
        print("  Desired Temperature: \(ambientTemps[day - 1])°C")
        print("  Current Temperature: \(currentTemp)°C")
        print("  Status: \(status)")
        print()
    }
}

func simulateTemperatureControl() {
    let ambientTemps = [25.0, 28.0, 30.0, 32.0, 31.0, 29.0, 27.0]
    var system = TemperatureControlSystem(currentTemp: 20.0, desiredTemp: ambientTemps[0], coolingOn: false, heatingOn: false, coolingRate: 1.0, heatingRate: 0.05, insulationFactor: 0.1, ambientTemps: ambientTemps)
    
    for day in 1...7 {
        system.desiredTemp = ambientTemps[day - 1]
        system.adjustTemperature()
        system.logTemperature(day: day)
    }
}

