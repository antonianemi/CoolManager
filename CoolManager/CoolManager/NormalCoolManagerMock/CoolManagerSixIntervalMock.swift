import Foundation
final class CoolManagerSixIntervalMock:CoolManager {
    override class func createCoolManager() -> CoolManager {
         let file = ConfigurationFiles.SixUnitIntervalConfiguration
        return createCoolManager(withConfigurationFile: file)
     }
}
