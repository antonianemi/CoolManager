import Foundation
final class NormalCoolManagerNineIntervalMock:CoolManager {
    override class func createCoolManager() -> CoolManager {
        let file = ConfigurationFiles.NineUnitIntervalConfiguration
        let configurationManager = RefrigeratorConfigurationManager(fileURL: file)
        let factory = FileBasedRefrigeratorFactory(configurationManager: configurationManager)
        let coolManager = CoolManager(factory: factory)
        return coolManager
    }
}
