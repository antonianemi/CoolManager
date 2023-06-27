import Foundation
class MainPresenter{
    let buttonSize = CGSize(width: 125, height: 117)
    let buttonSpacing: CGFloat = 0.0
    func buttonsCount() -> Int {
        return 6
    }
    func getYPosition(_ index:Int)->CGFloat{
        return (buttonSize.height + buttonSpacing) * CGFloat(index)
    }
    
}
