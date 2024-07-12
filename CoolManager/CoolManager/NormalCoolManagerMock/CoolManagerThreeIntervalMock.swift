final class CoolManagerThreeIntervalMock:CoolManager {
    override class func create() -> CoolManager {
         let file = ConfigurationFiles.ThreeUnitIntervalConfiguration
        return createCoolManager(withConfigurationFile: file)
     }
}
