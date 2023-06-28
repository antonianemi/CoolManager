
import UIKit
class ButtonMenuVertical:UIButton {
    let button
    let symbolConfiguration = UIImage.SymbolConfiguration(pointSize: 60)
    
    init(button:UIButton){
        self.button = button
    }
    
    func create() -> UIButton {
        self.buildFrameSize()
        self.buildNormalImage()
        self.buildSelectedImage()
        return button
    }
    func buildFrameSize(){}
    func buildNormalImage(){}
    func buildSelectedImage(){}
}
