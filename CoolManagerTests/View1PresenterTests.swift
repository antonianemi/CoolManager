import XCTest
@testable import CoolManager
class View1PresenterTests: XCTestCase {
    func testUpScaleSetPoint() {
        let refrigerator = try!NormalRefrigeratorFactory().create()
        let presenter = HomePresenter(refrigerator)
        let view = MockView1View()
        presenter.setView(view)
        presenter.upScaleSetPoint()
        let setPointValue = presenter.getRefrigeratorBuilderViewModel().setPoint().temperatureSetPoint.value
        XCTAssertTrue(setPointValue == 25)
        XCTAssertTrue(view.updateImageSetPointCalled == true)
    }
    
    func testDownScaleSetPoint() {
        let refrigerator = try!NormalRefrigeratorFactory().create()
        let presenter = HomePresenter(refrigerator)
        let view = MockView1View()
        presenter.setView(view)
        presenter.downScaleSetPoint()
        let setPointValue = presenter.getRefrigeratorBuilderViewModel().setPoint().temperatureSetPoint.value
        XCTAssertTrue(setPointValue == 15)
        XCTAssertTrue(view.updateImageSetPointCalled == true)
    }
    
}

