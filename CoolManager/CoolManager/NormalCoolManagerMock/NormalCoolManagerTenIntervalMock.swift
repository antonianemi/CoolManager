import Foundation
final class NormalCoolManagerTenIntervalMock:CoolManager {
    override class func createCoolManager() -> CoolManager {
         let file = ConfigurationFiles.TenUnitIntervalConfiguration
         let configurationManager = RefrigeratorConfigurationManager(fileURL: file)
         let factory = FileBasedRefrigeratorFactory(configurationManager: configurationManager)
         let coolManager = CoolManager(factory: factory)
         return coolManager
     }
}
