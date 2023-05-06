import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var content: UIView!
    
    lazy var viewControllers: [UIViewController] = {
            let viewControllers: [UIViewController] = [View1ViewController(), View2ViewController(), View3ViewController(), View4ViewController(), View5ViewController(), View6ViewController(), View7ViewController()]
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
}

