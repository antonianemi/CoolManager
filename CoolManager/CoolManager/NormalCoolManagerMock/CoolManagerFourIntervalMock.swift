final class CoolManagerFourIntervalMock:CoolManager {
    override class func create() -> CoolManager {
        let file = ConfigurationFiles.FourUnitIntervalConfiguration
        return createCoolManager(withConfigurationFile: file)
    }
}
