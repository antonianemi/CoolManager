import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var content: UIView!
    
    let view_1 = Bundle.main.loadNibNamed("view1", owner: nil)
    let view_2 = Bundle.main.loadNibNamed("view2", owner: nil)
    let view_3 = Bundle.main.loadNibNamed("view3", owner: nil)
    let view_4 = Bundle.main.loadNibNamed("view4", owner: nil)
    let view_5 = Bundle.main.loadNibNamed("view5", owner: nil)
    let view_6 = Bundle.main.loadNibNamed("view6", owner: nil)
    let view_7 = Bundle.main.loadNibNamed("view7", owner: nil)
    
    @IBAction func btn_1() {
        let view:view1 = view1.fromNib()
        content.addSubview(view)
    }
    
    @IBAction func btn_2() {
        let view:view2 = view2.fromNib()
        content.addSubview(view)
    }
    
    @IBAction func btn_3() {
        let view:view3 = view3.fromNib()
        content.addSubview(view)
    }
    
    @IBAction func btn_4() {
        let view:view4 = view4.fromNib()
        content.addSubview(view)
    }
    
    @IBAction func btn_5() {
        let view:view5 = view5.fromNib()
        content.addSubview(view)
    }
    
    @IBAction func btn_6() {
        let view:view6 = view6.fromNib()
        content.addSubview(view)
    }
    
    @IBAction func btn_7() {
        let view:view7 = view7.fromNib()
        content.addSubview(view)
    }
}

