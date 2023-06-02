final class DoorOpenedCoolManagerMock:CoolManager {
    init(){ super.init(User(), try! DoorOpenedRefrigeratorFactory().create()) }
    override func excecute(_ action:Action){ action.excecute() }
}
