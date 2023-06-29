import UIKit
extension UIButton {
    func configure(withIcon icon: String) {
        let fill = "\(icon).fill"
        let buttonSize = CGSize(width: 125, height: 117)
        let pointSize = UIImage.SymbolConfiguration(pointSize: 60)
        let pointSizeSelected = UIImage.SymbolConfiguration(pointSize: 100)
        self.frame = CGRect(origin: .zero, size: buttonSize)
        self.setImage(UIImage(systemName: icon)!.withConfiguration(pointSize), for: .normal)
        self.setImage(UIImage(systemName: fill)!.withConfiguration(pointSizeSelected), for: .selected)
    }
}
