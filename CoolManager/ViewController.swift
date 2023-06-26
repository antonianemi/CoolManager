import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var content: UIView!
    
    lazy var viewControllers: [UIViewController] = {
            let viewControllers: [UIViewController] = [buildView1Controller(),
                                                       View2ViewController(),
                                                       View3ViewController(),
                                                       View4ViewController(),
                                                       View5ViewController(),
                                                       View6ViewController(),
                                                       View7ViewController()]
            viewControllers.forEach { addChild($0) }
            return viewControllers
        }()
        
        @IBAction func buttonPressed(_ sender: UIButton) {
            let index = sender.tag - 1
            guard index >= 0 && index < viewControllers.count else {
                return
            }
            
            content.subviews.forEach { $0.removeFromSuperview() }
            let selectedViewController = viewControllers[index]
            content.addSubview(selectedViewController.view)
        }
    
    func buildView1Controller()->View1ViewController{
        let view = View1ViewController()
        do {
            view.presenter = try View1Presenter(NormalRefrigeratorFactory().create())
            view.identifier = "View1ViewController"
        }
        catch TemperatureError.inconsistentUnit{
            //TODO: notify your presenter so he can perform operations needed
        }
        catch TemperatureError.sameMinMaxValue{
            //TODO: notify your presenter so he can perform operations needed
        }
        catch TemperatureError.outOfRangeSetPoint{
            //TODO: notify your presenter so he can perform operations needed
        }
        catch{
            //TODO: implement popup to correct the lims
        }
        return view
    }
}

