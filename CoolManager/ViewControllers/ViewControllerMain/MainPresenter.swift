import Foundation
class MainPresenter{
    let buttonSize = CGSize(width: 125, height: 117)
    let buttonSpacing: CGFloat = 0.0
    let buttons = ["Menu_connect","Menu_keyboard","Menu_password","Menu_settings","Menu_units","Menu_user"]
    func buttonsCount(_ value: CGFloat) -> Int {
        return buttons.count
    }
    func getYPosition(_ index:Int)->CGFloat{
        return (buttonSize.height + buttonSpacing) * CGFloat(index)
    }
}
