final class CoolManagerEightIntervalMock:CoolManager {
    override class func create() -> CoolManager {
        let file = ConfigurationFiles.EightUnitIntervalConfiguration
        return createCoolManager(withConfigurationFile: file)
    }
}
