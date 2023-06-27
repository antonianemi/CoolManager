import XCTest
@testable import CoolManager
class View1PresenterTests: XCTestCase {
    func testUpScaleSetPoint() {
        let refrigerator = try!NormalRefrigeratorFactory().create()
        let presenter = View1Presenter(refrigerator)
        presenter.upScaleSetPoint()
        XCTAssertTrue(presenter.getRefrigeratorBuilderViewModel().setPoint().temperatureSetPoint.value == 25)
    }
    
    func testDownScaleSetPoint() {
        let refrigerator = try!NormalRefrigeratorFactory().create()
        let presenter = View1Presenter(refrigerator)
        presenter.downScaleSetPoint()
        XCTAssertTrue(presenter.getRefrigeratorBuilderViewModel().setPoint().temperatureSetPoint.value == 15)
    }
}

