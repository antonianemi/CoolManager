import UIKit
final class SettingsButtonFactory:ButtonFactory {
    let icon = "hammer"
    let button = SettingsButton()
    func create() -> UIButton {
        button.configure(withIcon: icon)
        return button
    }
}
