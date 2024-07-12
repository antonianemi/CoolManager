final class DoorOpenedCoolManagerMock:CoolManager {
    override class func create() -> CoolManager {
        let file = ConfigurationFiles.DoorOpenedRefrigeratorConfiguration
        return createCoolManager(withConfigurationFile: file)
     }
}
