final class NormalCoolManagerMock:CoolManager {
    override class func create() -> CoolManager {
        let file = ConfigurationFiles.NormalRefrigeratorConfiguration
        return createCoolManager(withConfigurationFile: file)
    }
}
