final class CoolManagerFiveIntervalMock:CoolManager {
    override class func create() -> CoolManager {
        let file = ConfigurationFiles.FiveUnitIntervalConfiguration
        return createCoolManager(withConfigurationFile: file)
    }
}
