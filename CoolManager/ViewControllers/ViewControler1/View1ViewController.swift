import UIKit

class View1ViewController: UIViewController {
    let identifier = "View1ViewController"
    var presenter = View1Presenter()
    var _view:Vista1? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        _view = Vista1(frame: view.frame)
        view = _view
        presenter.setView(_view!)
        presenter.viewDidLoad()
    }
}
