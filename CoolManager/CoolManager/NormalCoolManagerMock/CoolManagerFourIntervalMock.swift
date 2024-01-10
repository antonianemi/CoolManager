import Foundation
final class CoolManagerFourIntervalMock:CoolManager {
    override class func createCoolManager() -> CoolManager {
        let file = ConfigurationFiles.FourUnitIntervalConfiguration
        return createCoolManager(withConfigurationFile: file)
    }
}
