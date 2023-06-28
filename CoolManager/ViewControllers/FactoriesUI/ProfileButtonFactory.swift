import UIKit
final class ProfileButtonFactory:ButtonFactory {
    let icon = "person"
    let button = ProfileButton()
    func create() -> UIButton {
        button.configure(withIcon: icon)
        return button
    }
}
