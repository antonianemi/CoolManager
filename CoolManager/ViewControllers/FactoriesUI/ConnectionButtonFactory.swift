import UIKit
final class ConnectionButtonFactory:ButtonFactory {
    let icon = "wifi.circle"
    let button = ConnectionButton()
    func create() -> UIButton {
        button.configure(withIcon: icon)
        return button
    }
}
