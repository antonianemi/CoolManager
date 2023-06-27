import UIKit
final class HomeButtonFactory:ButtonFactory {
    let buttonSize = CGSize(width: 125, height: 117)
    func create() -> UIButton{
        let button = HomeButton()
        button.frame = CGRect(origin: .zero, size: buttonSize)
        let normalImage = UIImage(systemName: "house")
        let selectedImage = UIImage(systemName: "house.fill")
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
