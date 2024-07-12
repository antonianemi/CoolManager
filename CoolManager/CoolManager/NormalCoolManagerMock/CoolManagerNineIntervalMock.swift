final class CoolManagerNineIntervalMock:CoolManager {
    override class func create() -> CoolManager {
        let file = ConfigurationFiles.NineUnitIntervalConfiguration
        return createCoolManager(withConfigurationFile: file)
    }
}
