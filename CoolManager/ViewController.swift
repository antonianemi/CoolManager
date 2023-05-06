import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var content: UIView!
    
    lazy var vc1: UIViewController = {
            let vc = View1ViewController()
            addChild(vc)
            vc.didMove(toParent: self)
            return vc
        }()
        
        lazy var vc2: UIViewController = {
            let vc = View2ViewController()
            addChild(vc)
            vc.didMove(toParent: self)
            return vc
        }()
        
        lazy var vc3: UIViewController = {
            let vc = View3ViewController()
            addChild(vc)
            vc.didMove(toParent: self)
            return vc
        }()
        
        lazy var vc4: UIViewController = {
            let vc = View4ViewController()
            addChild(vc)
            vc.didMove(toParent: self)
            return vc
        }()
        
        lazy var vc5: UIViewController = {
            let vc = View5ViewController()
            addChild(vc)
            vc.didMove(toParent: self)
            return vc
        }()
        
        lazy var vc6: UIViewController = {
            let vc = View6ViewController()
            addChild(vc)
            vc.didMove(toParent: self)
            return vc
        }()
        
        lazy var vc7: UIViewController = {
            let vc = View7ViewController()
            addChild(vc)
            vc.didMove(toParent: self)
            return vc
        }()
        
        @IBAction func btn_1() {
            content.subviews.forEach { $0.removeFromSuperview() }
            content.addSubview(vc1.view)
        }
        
        @IBAction func btn_2() {
            content.subviews.forEach { $0.removeFromSuperview() }
            content.addSubview(vc2.view)
        }
        
        @IBAction func btn_3() {
            content.subviews.forEach { $0.removeFromSuperview() }
            content.addSubview(vc3.view)
        }
        
        @IBAction func btn_4() {
            content.subviews.forEach { $0.removeFromSuperview() }
            content.addSubview(vc4.view)
        }
        
        @IBAction func btn_5() {
            content.subviews.forEach { $0.removeFromSuperview() }
            content.addSubview(vc5.view)
        }
        
        @IBAction func btn_6() {
            content.subviews.forEach { $0.removeFromSuperview() }
            content.addSubview(vc6.view)
        }
        
        @IBAction func btn_7() {
            content.subviews.forEach { $0.removeFromSuperview() }
            content.addSubview(vc7.view)
        }
}

