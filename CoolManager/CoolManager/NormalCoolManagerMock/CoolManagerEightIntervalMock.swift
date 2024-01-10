import Foundation
final class CoolManagerEightIntervalMock:CoolManager {
    override class func createCoolManager() -> CoolManager {
        let file = ConfigurationFiles.EightUnitIntervalConfiguration
        return createCoolManager(withConfigurationFile: file)
    }
}
