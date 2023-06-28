class ControllerCoolManager {
    var view: ViewCoolManager
    let coolManager:CoolManager
    init(vista: ViewCoolManager, coolManager:CoolManager) {
        self.coolManager = coolManager
        self.view = vista
    }
    
    internal func excecute(_ action:Action){
        coolManager.excecute(action)
    }
}
