import Foundation
final class NormalCoolManagerTwoIntervalMock:CoolManager {
    init(){
        let configurationManager = RefrigeratorConfigurationManager(fileURL: ConfigurationFiles.TwoUnitIntervalConfiguration)
        let factory = FileBasedRefrigeratorFactory(configurationManager: configurationManager)
        let refrigerator = factory.create()
        super.init(refrigerator)
    }
    override func excecute(_ action:Action){
        action.excecute()
    }
}
