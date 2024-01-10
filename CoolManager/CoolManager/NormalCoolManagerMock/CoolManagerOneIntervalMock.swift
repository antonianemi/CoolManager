final class CoolManagerOneIntervalMock:CoolManager {
    override class func createCoolManager() -> CoolManager {
        let file = ConfigurationFiles.OneUnitIntervalConfiguration
        return createCoolManager(withConfigurationFile: file)
    }
}
