class View1Presenter: view1Delegate {
    private let viewModel: RefrigeratorBuilderViewModel
    private weak var view: View1View?
    
    init() {
        viewModel = RefrigeratorBuilderViewModel()
        viewModel.delegate = self
    }
    
    func viewDidLoad() {
        view?.setLightStatus(viewModel.lightStatus())
        view?.setCompressorStatus(viewModel.compressorStatus())
        view?.setDoorStatus(viewModel.isDoorOpen())
        view?.setResistenceStatus(viewModel.resistenceStatus())
    }
    func setView(_ view:View1View){
        self.view = view
    }
    
    func update() {
        view?.setLightStatus(viewModel.lightStatus())
        view?.setCompressorStatus(viewModel.compressorStatus())
        view?.setDoorStatus(viewModel.isDoorOpen())
        view?.setResistenceStatus(viewModel.resistenceStatus())
    }
    
}

protocol view1Delegate{
    func update()
}
