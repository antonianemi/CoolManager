import UIKit

class ViewController: UIViewController {
    let presenter = MainPresenter()
    let container = UIView()
    let buttons:[UIButton] = [HomeButtonFactory().create(),
                              SettingsButtonFactory().create(),
                              ConnectionButtonFactory().create(),
                              ProfileButtonFactory().create()]
    override func viewDidLoad() {
        super.viewDidLoad()
        loadMenuButtons()
        setUpUI()
    }
    func loadMenuButtons(){
        buttons.forEach{
            $0.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        }
    }
    
    func setUpUI(){
        let sv = UIStackView(arrangedSubviews: buttons)
        view.addSubview(sv)
        view.addSubview(container)
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        sv.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        sv.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        sv.widthAnchor.constraint(equalToConstant: 125).isActive = true
        sv.axis = .vertical
        sv.distribution = .fillEqually
        container.translatesAutoresizingMaskIntoConstraints = false
        container.topAnchor.constraint(equalTo: sv.topAnchor, constant: 0).isActive = true
        container.bottomAnchor.constraint(equalTo: sv.bottomAnchor, constant: 0).isActive = true
        container.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        container.leadingAnchor.constraint(equalTo: sv.trailingAnchor, constant: 0).isActive = true
    }
    
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
        
        container.subviews.forEach { $0.removeFromSuperview() }
        container.addSubview(viewControllers[index].view)
    }
    
    func buildView1Controller()->View1ViewController{
        let view = View1ViewController()
        do {
            view.presenter = try View1Presenter(DoorOpenedRefrigeratorFactory().create())
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

