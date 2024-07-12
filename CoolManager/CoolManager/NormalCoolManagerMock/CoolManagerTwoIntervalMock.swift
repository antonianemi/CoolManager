import Foundation
final class CoolManagerTwoIntervalMock:CoolManager {
    override class func create() -> CoolManager {
        let file = ConfigurationFiles.TwoUnitIntervalConfiguration
        return createCoolManager(withConfigurationFile: file)
    }
}
