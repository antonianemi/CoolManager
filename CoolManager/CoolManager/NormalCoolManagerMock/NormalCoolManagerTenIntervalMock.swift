import Foundation
final class NormalCoolManagerTenIntervalMock:CoolManager {
    init(){
        let configurationManager = RefrigeratorConfigurationManager(fileURL: ConfigurationFiles.TenUnitIntervalConfiguration)
        let factory = FileBasedRefrigeratorFactory(configurationManager: configurationManager)
        let refrigerator = factory.create()
        super.init(refrigerator)
    }
    override func excecute(_ action:Action){
        action.excecute()
    }
}
