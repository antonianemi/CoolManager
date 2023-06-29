import UIKit
class HomeButton: UIButton {
    init() {
        super.init(frame: .zero)
        self.tag = 1
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
