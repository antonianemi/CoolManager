import Foundation
final class CoolManagerTenIntervalMock:CoolManager {
    override class func createCoolManager() -> CoolManager {
         let file = ConfigurationFiles.TenUnitIntervalConfiguration
        return createCoolManager(withConfigurationFile: file)
     }
}
