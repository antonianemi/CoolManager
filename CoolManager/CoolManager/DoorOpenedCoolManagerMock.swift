final class DoorOpenedCoolManagerMock:CoolManager {
    init(){ super.init(DoorOpenedRefrigeratorFactory().create()) }
    override func excecute(_ action:Action){ action.excecute() }
}
