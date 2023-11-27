import Foundation
final class NormalCoolManagerSixIntervalMock:CoolManager {
    init(){
        let configurationManager = RefrigeratorConfigurationManager(fileURL: ConfigurationFiles.SixUnitIntervalConfiguration)
        let factory = FileBasedRefrigeratorFactory(configurationManager: configurationManager)
        let refrigerator = factory.create()
        super.init(refrigerator)
    }
    override func excecute(_ action:Action){
        action.excecute()
    }
}
