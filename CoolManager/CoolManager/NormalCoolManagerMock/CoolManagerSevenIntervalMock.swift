final class CoolManagerSevenIntervalMock:CoolManager {
    override class func create() -> CoolManager {
         let file = ConfigurationFiles.SevenUnitIntervalConfiguration
        return createCoolManager(withConfigurationFile: file)
     }
}
