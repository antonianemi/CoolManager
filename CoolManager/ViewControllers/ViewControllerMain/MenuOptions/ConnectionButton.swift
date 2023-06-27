import UIKit

class ConnectionButton: UIButton {
    init() {
        super.init(frame: .zero)
        self.tag = 3
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
