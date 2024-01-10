final class NormalCoolManagerOneIntervalMock:CoolManager {
   override class func createCoolManager() -> CoolManager {
        let file = ConfigurationFiles.OneUnitIntervalConfiguration
        let configurationManager = RefrigeratorConfigurationManager(fileURL: file)
        let factory = FileBasedRefrigeratorFactory(configurationManager: configurationManager)
        let coolManager = CoolManager(factory: factory)
        return coolManager
    }
}
