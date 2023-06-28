import UIKit
final class HomeButtonFactory:ButtonFactory {
    let icon = "house"
    let button = HomeButton()
    func create() -> UIButton {
        button.configure(withIcon: icon)
        return button
    }
}
