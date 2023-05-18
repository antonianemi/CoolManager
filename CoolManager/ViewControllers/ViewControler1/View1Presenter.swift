class View1Presenter {
    private let viewModel: RefrigeratorBuilderViewModel
    private weak var view: View1View?
    
    init() {
        viewModel = RefrigeratorBuilderViewModel()
    }
    
    func viewDidLoad() {
        view?.setLightStatus(viewModel.lightStatus())
        view?.setCompressorStatus(viewModel.compressorStatus())
        view?.setFanStatus(viewModel.fanStatus())
        view?.setResistenceStatus(viewModel.resistenceStatus())
    }
    func setView(_ view:View1View){
        self.view = view
    }
}
