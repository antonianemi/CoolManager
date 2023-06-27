import XCTest
@testable import CoolManager
final class MainPresenterTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let presenter = MainPresenter()
        XCTAssert(presenter.buttonsCount() == 6)
    }
    
    func testExample2() throws {
        let presenter = MainPresenter()
        XCTAssert(presenter.getYPosition(0) == 0.0)
        XCTAssert(presenter.getYPosition(1) == 117.0)
        XCTAssert(presenter.getYPosition(2) == 234.0)
        XCTAssert(presenter.getYPosition(3) == 351.0)
        XCTAssert(presenter.getYPosition(4) == 468.0)
        XCTAssert(presenter.getYPosition(5) == 585.0)
        XCTAssert(presenter.getYPosition(6) == 702.0)
        XCTAssert(presenter.getYPosition(7) == 819.0)
        XCTAssert(presenter.getYPosition(8) == 936.0)
    }
    
    
    
    

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
