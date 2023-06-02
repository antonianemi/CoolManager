class enterDashBoardController:ControllerCoolManager {
    let coolManager:CoolManager
    let refrigerator:Refrigerator
    init(_ coolManager:CoolManager) {
        self.coolManager = coolManager
        self.refrigerator = self.coolManager.refrigerator
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
}
