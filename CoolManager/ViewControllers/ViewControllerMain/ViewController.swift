import UIKit

class ViewController: UIViewController {
    let presenter = MainPresenter()
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    func setUpUI(){
        let sv = UIStackView(arrangedSubviews: buttons)
        view.addSubview(sv)
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        sv.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        sv.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        sv.widthAnchor.constraint(equalToConstant: 125).isActive = true
        sv.axis = .vertical
        sv.distribution = .fillEqually
    }
    
    lazy var buttons:[UIButton] = {
        var buttons = [UIButton]()
        for index in 0..<presenter.buttonsCount(view.frame.width) {
            let button = UIButton(type: .system)
            button.frame = CGRect(origin: .zero, size: presenter.buttonSize)
            button.frame.origin = CGPoint(x: 0, y: presenter.getYPosition(index))
            button.setImage(UIImage(named: presenter.buttons[index]), for: .normal)
            button.setTitleColor(.white, for: .normal)
            button.tag = index
            button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
            buttons.append(button)
        }
        return buttons
    }()
    
    
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
        
    @objc func buttonPressed(_ sender: UIButton) {
            let index = sender.tag - 1
            guard index >= 0 && index < viewControllers.count else {
                return
            }
            
            view.subviews.forEach { $0.removeFromSuperview() }
            let selectedViewController = viewControllers[index]
            view.addSubview(selectedViewController.view)
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

