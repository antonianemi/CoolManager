import Foundation
class CoolManager {
    
    static let shared = CoolManager.create()
    
    private(set) var refrigerator: Refrigerator
    
    private var currentState: RefrigeratorState
    
    internal init(factory: RefrigeratorFactory) {
        self.refrigerator = factory.create()
        self.currentState = NormalState()
    }
    
    internal init(factory: RefrigeratorFactory, initialState: RefrigeratorState) {
        self.refrigerator = factory.create()
        self.currentState = initialState
    }
    
    class func create() -> CoolManager {
        let file = ConfigurationFiles.NormalRefrigeratorConfiguration
        return createCoolManager(withConfigurationFile: file)
    }
    
    class func createCoolManager(withConfigurationFile file: URL) -> CoolManager {
        let configurationManager = RefrigeratorConfigurationManager(fileURL: file)
        let factory = FileBasedRefrigeratorFactory(configurationManager: configurationManager)
        return CoolManager(factory: factory)
    }
    
    func execute(_ action: Executable) {
        currentState.execute(action, in: self)
    }
    
    func setNormalState() {
        currentState = NormalState()
    }
    
    func setResistanceOnState() {
        currentState = ResistanceOnState()
    }
    
    func commitSetPoint(){
        //self.execute(ConfirmSetPointSelectedAction(refrigerator.setPoint))
    }
    
    func moveSetPointUp(){
        //self.execute(PushSetPointUpAction(refrigerator.setPoint))
    }
    
    func moveSetPointDown(){
        //self.execute(PushSetPointDownAction(refrigerator.setPoint))
    }
    
    func turnResistanceOn(){
        //self.execute(TurnResistanceOnAction(refrigerator.resistance))
    }
    
    func turnResistanceOff(){
        //self.execute(TurnResistanceOffAction(refrigerator.resistance))
    }
}
