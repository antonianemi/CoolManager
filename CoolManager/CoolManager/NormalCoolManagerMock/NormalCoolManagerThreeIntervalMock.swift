import Foundation
final class NormalCoolManagerThreeIntervalMock:CoolManager {
    override class func createCoolManager() -> CoolManager {
         let file = ConfigurationFiles.ThreeUnitIntervalConfiguration
         let configurationManager = RefrigeratorConfigurationManager(fileURL: file)
         let factory = FileBasedRefrigeratorFactory(configurationManager: configurationManager)
         let coolManager = CoolManager(factory: factory)
         return coolManager
     }
}
