//
//  UnitTestingandUITestingTests.swift
//  UnitTestingandUITestingTests
//
//  Created by Sean O'Dowd on 10/13/21.
//

import XCTest
@testable import UnitTestingandUITesting

class UnitTestingandUITestingTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testString() {
        let v1 = ViewController()
        XCTAssertTrue(v1.isStringLong(mystring: "Yo ho ho, and a bottle of rum"))
    }
    
    func testAddingTwoNumbers() {
        let v2 = ViewController()
        let addValue = 20
        let resultValue = v2.isAddingTwoNumbers()
        
        XCTAssertEqual(addValue, resultValue)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
