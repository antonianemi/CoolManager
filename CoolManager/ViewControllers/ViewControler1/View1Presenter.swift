class View1Presenter {
    private let viewModel: RefrigeratorBuilderViewModel
    private weak var view: View1View?
    
    init() {
        viewModel = RefrigeratorBuilderViewModel()
    }
    
    func viewDidLoad() {
        let refrigerator = viewModel.buildRefrigerator()
        view?.displayRefrigeratorStatus(refrigerator.currentStateName())
    }

}
