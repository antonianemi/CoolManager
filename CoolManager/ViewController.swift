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
        content = view
    }
    
    @IBAction func btn_2() {
        let view:view2 = view2.fromNib()
        content = view
    }
    
    @IBAction func btn_3() {
        
    }
    
    @IBAction func btn_4() {
        
    }
    
    @IBAction func btn_5() {
        
    }
    
    @IBAction func btn_6() {
        
    }
    
    @IBAction func btn_7() {
        
    }
    
    @IBAction func btn_8() {
    }
    
    
}

