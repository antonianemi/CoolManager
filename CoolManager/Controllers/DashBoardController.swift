class DashBoardController:ControllerCoolManager {
    init(_ coolManager:CoolManager) {
        let viewSetPoint = viewSetPoint(coolManager.refrigerator.setPoint)
        let viewDashBoard = viewDashBoard(coolManager.refrigerator.resistance,
                          coolManager.refrigerator.compressor,
                          coolManager.refrigerator.fan,
                          coolManager.refrigerator.door,
                          coolManager.refrigerator.light,
                          viewSetPoint)
        super.init(vista: viewDashBoard,coolManager: coolManager)
    }
    
    func commitSetPoint(){
        self.excecute(ConfirmSetPointSelectedAction(coolManager.refrigerator.setPoint))
    }
    func moveSetPointUp(){
        self.excecute(PushSetPointUpAction(coolManager.refrigerator.setPoint))
    }
    func moveSetPointDown(){
        self.excecute(PushSetPointDownAction(coolManager.refrigerator.setPoint))
    }
}
