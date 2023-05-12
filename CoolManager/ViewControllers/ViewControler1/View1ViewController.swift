import UIKit

class View1ViewController: UIViewController {
    let identifier = "View1ViewController"
    var presenter: View1Presenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewController: \(identifier)")
        
        presenter = View1Presenter()
        presenter.viewDidLoad()
    }
}



extension View1ViewController: View1View {
    func displayRefrigeratorStatus(_ status: String) {
        print(status)
    }
}







