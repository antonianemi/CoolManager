import Foundation
final class NormalCoolManagerFiveIntervalMock:CoolManager {
    override class func createCoolManager() -> CoolManager {
        let file = ConfigurationFiles.FiveUnitIntervalConfiguration
        let configurationManager = RefrigeratorConfigurationManager(fileURL: file)
        let factory = FileBasedRefrigeratorFactory(configurationManager: configurationManager)
        let coolManager = CoolManager(factory: factory)
        return coolManager
    }
}
