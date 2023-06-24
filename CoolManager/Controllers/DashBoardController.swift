class DashBoardController:ControllerCoolManager {
    private let coolManager:CoolManager
    init(_ coolManager:CoolManager) {
        self.coolManager = coolManager
        super.init(vista: viewDashBoard(self.coolManager.refrigerator.resistance,
                                        self.coolManager.refrigerator.compressor,
                                        self.coolManager.refrigerator.fan,
                                        self.coolManager.refrigerator.door,
                                        self.coolManager.refrigerator.light,
                                        viewSetPoint(self.coolManager.refrigerator.setPoint)))
    }
    
    func commitSetPoint(){
        self.excecute(confirmSetPointSelectedAction(coolManager.refrigerator.setPoint))
    }
    func moveSetPointUp(){
        self.excecute(pushSetPointUpAction(coolManager.refrigerator.setPoint))
    }
    func moveSetPointDown(){
        self.excecute(pushSetPointDownAction(coolManager.refrigerator.setPoint))
    }
    private func excecute(_ action:Action){
        coolManager.excecute(action)
    }
}
