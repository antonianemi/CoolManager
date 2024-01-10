import Foundation
final class NormalCoolManagerTwoIntervalMock:CoolManager {
    override class func createCoolManager() -> CoolManager {
         let file = ConfigurationFiles.TwoUnitIntervalConfiguration
         let configurationManager = RefrigeratorConfigurationManager(fileURL: file)
         let factory = FileBasedRefrigeratorFactory(configurationManager: configurationManager)
         let coolManager = CoolManager(factory: factory)
         return coolManager
     }
}
