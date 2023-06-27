import Foundation
class MainPresenter{
    let buttonSize = CGSize(width: 125, height: 117)
    let buttonSpacing: CGFloat = 0.0
    
    func buttonsCount(_ value: CGFloat) -> Int{
        let availableHeight = value - buttonSpacing
        let numberOfButtons = Int(availableHeight / (buttonSize.height + buttonSpacing))
        return numberOfButtons
    }
    func getYPosition(_ index:Int)->CGFloat{
        return (buttonSize.height + buttonSpacing) * CGFloat(index)
    }
}
