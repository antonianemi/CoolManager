import Foundation
final class NormalCoolManagerSixIntervalMock:CoolManager {
    override class func createCoolManager() -> CoolManager {
         let file = ConfigurationFiles.SixUnitIntervalConfiguration
         let configurationManager = RefrigeratorConfigurationManager(fileURL: file)
         let factory = FileBasedRefrigeratorFactory(configurationManager: configurationManager)
         let coolManager = CoolManager(factory: factory)
         return coolManager
     }
}
