import UIKit
final class SettingsButtonFactory:ButtonFactory {
    let icon = "hammer"
    let button = SettingsButton()
    let buttonSize = CGSize(width: 125, height: 117)
    let poinSize = UIImage.SymbolConfiguration(pointSize: 60)
    func create() -> UIButton {
        button.frame = CGRect(origin: .zero, size: buttonSize)
        button.setImage(UIImage(systemName: icon)!.withConfiguration(poinSize), for: .normal)
        button.setImage(UIImage(systemName: "\(icon).fill")!.withConfiguration(poinSize), for: .selected)
        return button
    }
}
