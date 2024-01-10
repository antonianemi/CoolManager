import Foundation
class CoolManager {
    
    static let shared = CoolManager.createCoolManager()
    
    private(set) var refrigerator: Refrigerator
    
    internal init(factory: RefrigeratorFactory) {
        self.refrigerator = factory.create()
    }
    
    class func createCoolManager() -> CoolManager {
        let file = ConfigurationFiles.NormalRefrigeratorConfiguration
        let configurationManager = RefrigeratorConfigurationManager(fileURL: file)
        let factory = FileBasedRefrigeratorFactory(configurationManager: configurationManager)
        return CoolManager(factory: factory)
    }
    
    func execute(_ action: Executable) {
        action.execute()
    }
    
    func commitSetPoint(){
        self.execute(ConfirmSetPointSelectedAction(refrigerator.setPoint))
    }
    
    func moveSetPointUp(){
        self.execute(PushSetPointUpAction(refrigerator.setPoint))
    }
    
    func moveSetPointDown(){
        self.execute(PushSetPointDownAction(refrigerator.setPoint))
    }
    
    func turnResistanceOn(){
        self.execute(TurnResistanceOnAction(refrigerator.resistance))
    }
    
    func turnResistanceOff(){
        self.execute(TurnResistanceOffAction(refrigerator.resistance))
    }
}
