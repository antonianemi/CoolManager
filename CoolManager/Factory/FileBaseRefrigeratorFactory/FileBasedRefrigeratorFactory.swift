import Foundation
class FileBasedRefrigeratorFactory: RefrigeratorFactory {
    func create() -> Refrigerator {
        let configuration = loadConfiguration()
        let setPoint = SetPoint(temperature: configuration.currentTemperature,
                                temperatureGoal: configuration.temperatureGoal,
                                maxTemperature: configuration.maxTemperature,
                                minTemperature: configuration.minTemperature)
        return Refrigerator(
                   setPoint: setPoint,
                   fan: configuration.fan,
                   door: configuration.door,
                   compressor: configuration.compressor,
                   light: configuration.light,
                   resistance: configuration.resistance
               )
    }
    
    private func loadConfiguration() -> RefrigeratorConfiguration {
        let fileURL = URL(fileURLWithPath: "/Users/antoniocortes/code/CoolManagerNew/CoolManager/CoolManager/Factory/FileBaseRefrigeratorFactory/configurations.txt")
        do {
            let configurations = try loadConfigurations(from: fileURL)
            return configurations[0]
        } catch {
            fatalError("Error loading configurations: \(error)")
        }
    }
    
    func loadConfigurations(from fileURL: URL) throws -> [RefrigeratorConfiguration] {
        let content = try String(contentsOf: fileURL)
        let lines = content.components(separatedBy: .newlines).filter { !$0.isEmpty }
        let configurations = lines.map { line -> RefrigeratorConfiguration in
            let trimmedLine = line.trimmingCharacters(in: .whitespacesAndNewlines)
            let values = trimmedLine.components(separatedBy: ",")
            return RefrigeratorConfiguration(from: values)
        }
        return configurations
    }
}
