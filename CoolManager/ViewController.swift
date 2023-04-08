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
        content = view_1
    }
    
    @IBAction func btn_2() {
        content = view_2
    }
    
    @IBAction func btn_3() {
        content = view_3
    }
    
    @IBAction func btn_4() {
        content = view_4
    }
    
    @IBAction func btn_5() {
        content = view_5
    }
    
    @IBAction func btn_6() {
        content = view_6
    }
    
    @IBAction func btn_7() {
        content = view_7
    }
    
    @IBAction func btn_8() {
        //content = view_8
    }
    
    
}

