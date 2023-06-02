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
    
    func pullData()->viewDashBoard {
        return self.view as! viewDashBoard
    }
    
    func commitSetPoint(){
        self.excecute(confirmSetPointSelectedAction(setPoint))
    }
    func commitSetPointUp(){
        self.excecute(pushSetPointUpAction(setPoint))
    }
    func commitSetPointDown(){
        self.excecute(pushSetPointDownAction(setPoint))
    }
    func excecute(_ action:Action){
        coolManager.excecute(action)
    }
}
