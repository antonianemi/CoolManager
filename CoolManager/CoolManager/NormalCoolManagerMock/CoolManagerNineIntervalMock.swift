import Foundation
final class CoolManagerNineIntervalMock:CoolManager {
    override class func createCoolManager() -> CoolManager {
        let file = ConfigurationFiles.NineUnitIntervalConfiguration
        return createCoolManager(withConfigurationFile: file)
    }
}
