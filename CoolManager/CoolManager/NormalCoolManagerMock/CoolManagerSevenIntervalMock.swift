import Foundation
final class CoolManagerSevenIntervalMock:CoolManager {
    override class func createCoolManager() -> CoolManager {
         let file = ConfigurationFiles.SevenUnitIntervalConfiguration
        return createCoolManager(withConfigurationFile: file)
     }
}
