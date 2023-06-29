import UIKit
class SettingsButton: UIButton {
    init() {
        super.init(frame: .zero)
        self.tag = 2
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
