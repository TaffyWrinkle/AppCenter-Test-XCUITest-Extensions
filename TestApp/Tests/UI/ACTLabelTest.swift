
import XCTest

class ACTLabelTest: XCTestCase {

    override func setUp() {
        super.setUp()
        self.continueAfterFailure = true
        ACTLaunch.launch();
    }

    override func tearDown() {
        super.tearDown()
        XCUIApplication().terminate()
    }

    func testACTLabelClassMethodWithSwift() {
        ACTLabel.labelStep("Given the app has launched")
        ACTLabel.labelStep("Then I %@ the %@ button %@ times",
                          args: getVaList(["touch", "red", "3"]))
        XCTAssert(true, "This test should always pass");
    }

    func testACTScreenshotter() {
        ACTScreenshotter.screenshotWithTitle(title: "screenshot");
        XCTAssert(true, "This test should always pass");
    }
}
