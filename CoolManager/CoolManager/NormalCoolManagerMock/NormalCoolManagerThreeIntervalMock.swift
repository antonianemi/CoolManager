import Foundation
final class NormalCoolManagerThreeIntervalMock:CoolManager {
    init(){
        let configurationManager = RefrigeratorConfigurationManager(fileURL: ConfigurationFiles.ThreeUnitIntervalConfiguration)
        let factory = FileBasedRefrigeratorFactory(configurationManager: configurationManager)
        let refrigerator = factory.create()
        super.init(refrigerator)
    }
    override func excecute(_ action:Action){
        action.excecute()
    }
}
