import Foundation
final class NormalCoolManagerSevenIntervalMock:CoolManager {
    override class func createCoolManager() -> CoolManager {
         let file = ConfigurationFiles.SevenUnitIntervalConfiguration
         let configurationManager = RefrigeratorConfigurationManager(fileURL: file)
         let factory = FileBasedRefrigeratorFactory(configurationManager: configurationManager)
         let coolManager = CoolManager(factory: factory)
         return coolManager
     }
}
