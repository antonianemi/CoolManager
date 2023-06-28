final class NormalCoolManagerMock:CoolManager {
    init(){ super.init(try! NormalRefrigeratorFactory().create()) }
    override func excecute(_ action:Action){ action.excecute() }
}
