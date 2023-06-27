import UIKit
final class ProfileButtonFactory:ButtonFactory {
    let buttonSize = CGSize(width: 125, height: 117)
    func create() -> UIButton{
        let button = ProfileButton()
        button.frame = CGRect(origin: .zero, size: buttonSize)
        let normalImage = UIImage(systemName: "person")
        let selectedImage = UIImage(systemName: "person.fill")
        let symbolConfiguration = UIImage.SymbolConfiguration(pointSize: 60)
        let resizedNormalImage = normalImage!
                .withConfiguration(symbolConfiguration)
                .withRenderingMode(.automatic)
        let resizedSelectedImage = selectedImage!
                .withConfiguration(symbolConfiguration)
                .withRenderingMode(.alwaysOriginal)
        button.setImage(resizedNormalImage, for: .normal)
        button.setImage(resizedSelectedImage, for: .selected)
        return button
    }
}
