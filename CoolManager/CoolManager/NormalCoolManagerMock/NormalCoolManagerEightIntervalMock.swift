import Foundation
final class NormalCoolManagerEightIntervalMock:CoolManager {
    override class func createCoolManager() -> CoolManager {
        let file = ConfigurationFiles.EightUnitIntervalConfiguration
        let configurationManager = RefrigeratorConfigurationManager(fileURL: file)
        let factory = FileBasedRefrigeratorFactory(configurationManager: configurationManager)
        let coolManager = CoolManager(factory: factory)
        return coolManager
    }
}
