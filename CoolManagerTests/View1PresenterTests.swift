import XCTest
@testable import CoolManager
class View1PresenterTests: XCTestCase {
    func testUpScaleSetPoint() {
        let presenter = try! View1Presenter(NormalRefrigeratorFactory().create())
        presenter.upScaleSetPoint()
        XCTAssertTrue(presenter.getRefrigeratorBuilderViewModel().setPoint().temperatureSetPoint.value == 25)
    }
    
    func testDownScaleSetPoint() {
        let presenter = try! View1Presenter(NormalRefrigeratorFactory().create())
        presenter.downScaleSetPoint()
        XCTAssertTrue(presenter.getRefrigeratorBuilderViewModel().setPoint().temperatureSetPoint.value == 15)
    }
}

