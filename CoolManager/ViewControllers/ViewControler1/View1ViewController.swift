import UIKit

class View1ViewController: UIViewController {
    let identifier = "View1ViewController"
    var presenter: View1Presenter!
    var _view:Vista1? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        _view = Vista1(frame: view.frame)
        do{
          try  _view?.setRefrigerator(NormalRefrigeratorFactory(.celsius).create())
        }
        catch TemperatureError.inconsistentUnit{
            //TODO: implement popup to correct the lims
        }
        catch TemperatureError.sameMinMaxValue{
            //TODO: implement popup to correct the lims
        }
        catch TemperatureError.outOfRangeSetPoint{
            //TODO: implement popup to correct the lims
        }
        catch{
            //TODO: implement popup to correct the lims
        }
        
        view = _view
        presenter = _view?.presenter
        presenter.setView(_view!)
        presenter.viewDidLoad()
    }
}
