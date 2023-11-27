final class NormalCoolManagerMock:CoolManager {
    init(){ super.init(NormalRefrigeratorFactory().create()) }
    override func excecute(_ action:Action){ action.excecute() }
}
