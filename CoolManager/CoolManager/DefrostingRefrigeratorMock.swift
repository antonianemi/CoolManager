final class DefrostingRefrigeratorMock:CoolManager {
    init(){ super.init(User(), try! DefrostingRefrigeratorFactory().create()) }
    override func excecute(_ action:Action){ action.excecute() }
}
