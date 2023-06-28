final class DoorOpenedCoolManagerMock:CoolManager {
    init(){ super.init(try! DoorOpenedRefrigeratorFactory().create()) }
    override func excecute(_ action:Action){ action.excecute() }
}
