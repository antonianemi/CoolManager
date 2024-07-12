final class CoolManagerTenIntervalMock:CoolManager {
    override class func create() -> CoolManager {
         let file = ConfigurationFiles.TenUnitIntervalConfiguration
        return createCoolManager(withConfigurationFile: file)
     }
}
