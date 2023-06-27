import UIKit
class ProfileButton: UIButton {
    init() {
        super.init(frame: .zero)
        self.tag = 4
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
