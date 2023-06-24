import Foundation
func readTemperatureRulesFromFile(filePath: String) -> [Temperature: TemperatureStatus] {
    var rules: [Temperature: TemperatureStatus] = [:]
    
    guard let fileURL = Bundle.main.url(forResource: filePath, withExtension: "txt") else {
        print("Error: temperature_rules.txt file not found.")
        return rules
    }
    
    do {
        let fileContent = try String(contentsOf: fileURL, encoding: .utf8)
        let lines = fileContent.components(separatedBy: .newlines)
        
        var currentTemperature: Temperature?
        var currentStatus: TemperatureStatus?
        
        for line in lines {
            let components = line.components(separatedBy: ":")
            
            if components.count == 2 {
                let key = components[0].trimmingCharacters(in: .whitespaces)
                let value = components[1].trimmingCharacters(in: .whitespaces)
                
                if key == "Temperatura" {
                    if let temperatureValue = Double(value) {
                        let temperature = Temperature(value: temperatureValue, unit: .celsius, interval: Double(components[0])!)
                        currentTemperature = temperature
                    }
                } else {
                    let statusComponents = value.components(separatedBy: ",").map { $0.trimmingCharacters(in: .whitespaces) }
                    
                    if statusComponents.count == 5 {
                        if let compressor = Bool(statusComponents[0]),
                           let light = Bool(statusComponents[1]),
                           let resistance = Bool(statusComponents[2]),
                           let fan = Bool(statusComponents[3]),
                           let door = Bool(statusComponents[4]){
                            currentStatus = TemperatureStatus(compressor: compressor, light: light, resistance: resistance, fan: fan, door: door)
                        }
                    }
                }
                
                if let temperature = currentTemperature, let status = currentStatus {
                    rules[temperature] = status
                }
            }
        }
    } catch {
        print("Error reading temperature rules file: \(error)")
    }
    
    return rules
}
