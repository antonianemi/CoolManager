import Foundation
final class CoolManagerFiveIntervalMock:CoolManager {
    override class func createCoolManager() -> CoolManager {
        let file = ConfigurationFiles.FiveUnitIntervalConfiguration
        return createCoolManager(withConfigurationFile: file)
    }
}
