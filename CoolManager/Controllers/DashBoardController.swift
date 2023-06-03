class DashBoardController:ControllerCoolManager {
    private let coolManager:CoolManager
    private let refrigerator:Refrigerator
    private let setPoint:SetPoint
    init(_ coolManager:CoolManager) {
        self.coolManager = coolManager
        self.refrigerator = self.coolManager.refrigerator
        self.setPoint = coolManager.refrigerator.setPoint
        super.init(vista: viewDashBoard(refrigerator.resistance,
                                        refrigerator.compressor,
                                        refrigerator.fan,
                                        refrigerator.door,
                                        refrigerator.light,
                                        viewSetPoint(refrigerator.setPoint)))
    }
    
    func reload(){
        self.view = viewDashBoard(refrigerator.resistance,
                                  refrigerator.compressor,
                                  refrigerator.fan,
                                  refrigerator.door,
                                  refrigerator.light,
                                  viewSetPoint(refrigerator.setPoint))
    }
    
    func commitSetPoint(){
        self.excecute(confirmSetPointSelectedAction(setPoint))
    }
    func moveSetPointUp(){
        self.excecute(pushSetPointUpAction(setPoint))
    }
    func moveSetPointDown(){
        self.excecute(pushSetPointDownAction(setPoint))
    }
    func excecute(_ action:Action){
        coolManager.excecute(action)
    }
}
