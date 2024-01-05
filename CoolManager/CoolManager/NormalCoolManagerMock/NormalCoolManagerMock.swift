final class NormalCoolManagerMock:CoolManager {
    init(){ super.init(NormalRefrigeratorFactory().create()) }
    override func excecute(_ action:Executable){ action.excecute() }
}
