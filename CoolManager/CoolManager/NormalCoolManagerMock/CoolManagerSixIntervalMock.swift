final class CoolManagerSixIntervalMock:CoolManager {
    override class func create() -> CoolManager {
         let file = ConfigurationFiles.SixUnitIntervalConfiguration
        return createCoolManager(withConfigurationFile: file)
     }
}
