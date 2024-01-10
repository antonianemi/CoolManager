import Foundation
final class CoolManagerTwoIntervalMock:CoolManager {
    override class func createCoolManager() -> CoolManager {
        let file = ConfigurationFiles.TwoUnitIntervalConfiguration
        let configurationManager = RefrigeratorConfigurationManager(fileURL: file)
        let factory = FileBasedRefrigeratorFactory(configurationManager: configurationManager)
        let coolManager = CoolManagerTwoIntervalMock(factory: factory)
        return coolManager
    }
}
