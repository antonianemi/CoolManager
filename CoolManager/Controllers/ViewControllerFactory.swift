import Foundation
class ViewControllerFactory {
    static let refrigerator = CoolManager.shared.refrigerator
    static func createDashBoardView() -> viewDashBoard {
        let refrigerator = CoolManager.shared.refrigerator
        let viewSetPoint = createViewSetPoint()
        let view = viewDashBoard(refrigerator.resistance,
                             refrigerator.compressor,
                             refrigerator.fan,
                             refrigerator.door,
                             refrigerator.light,
                             viewSetPoint)
        return view
    }
    
    static func createViewSetPoint() -> viewSetPoint {
        return viewSetPoint(refrigerator.setPoint)
    }
}
