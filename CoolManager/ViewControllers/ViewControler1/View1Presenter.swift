class View1Presenter: view1Delegate {
    private(set) var viewModel: RefrigeratorBuilderViewModel
    private weak var view: View1View?
    
    init(_ refrigerator:Refrigerator) {
        viewModel = RefrigeratorBuilderViewModel(refrigerator)
        viewModel.delegate = self
    }
    
    func upScaleSetPoint(){
        viewModel.upScaleSetPoint()
    }
    
    func downScaleSetPoint(){
        viewModel.downScaleSetPoint()
    }
    
    
    func setView(_ view:View1View){
        self.view = view
    }
    
    func viewDidLoad() {
        update()
        updateSetPointIcon()
    }
    
    func update() {
        view?.setLightStatus(viewModel.lightStatus())
        view?.setCompressorStatus(viewModel.compressorStatus())
        view?.setDoorStatus(viewModel.isDoorOpen())
        view?.setResistenceStatus(viewModel.resistenceStatus())
        view?.setTemperature(viewModel.getTemperarute())
    }
    func updateSetPointIcon() {
        view?.updateImageSetPoint(viewModel.getIconName())
    }
    
}

protocol view1Delegate{
    func update()
    func updateSetPointIcon()
}
