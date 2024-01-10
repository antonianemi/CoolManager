import Foundation
final class CoolManagerThreeIntervalMock:CoolManager {
    override class func createCoolManager() -> CoolManager {
         let file = ConfigurationFiles.ThreeUnitIntervalConfiguration
        return createCoolManager(withConfigurationFile: file)
     }
}
