final class DefrostingRefrigeratorMock:CoolManager {
    override class func create() -> CoolManager {
        let file = ConfigurationFiles.DefrostRefrigeratorConfiguration
        return createCoolManager(withConfigurationFile: file)
     }
}
