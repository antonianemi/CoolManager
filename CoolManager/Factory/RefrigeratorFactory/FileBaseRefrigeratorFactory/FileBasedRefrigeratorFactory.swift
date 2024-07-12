import Foundation

class FileBasedRefrigeratorFactory: RefrigeratorFactory {
    let configurationManager: RefrigeratorConfigurationManager

    init(configurationManager: RefrigeratorConfigurationManager) {
        self.configurationManager = configurationManager
    }

    func create() -> Refrigerator {
        do {
            let configurations = try configurationManager.loadConfigurations()
            let configuration = configurations[0]

            return Refrigerator(
                fan: configuration.fan,
                door: configuration.door,
                compressor: configuration.compressor,
                light: configuration.light,
                resistance: configuration.resistance
            )
        } catch {
            fatalError("Error loading configurations: \(error)")
        }
    }
}
