final class DefrostingRefrigeratorMock:CoolManager {
    init(){ super.init(DefrostingRefrigeratorFactory().create()) }
    override func excecute(_ action:Action){ action.excecute() }
}
