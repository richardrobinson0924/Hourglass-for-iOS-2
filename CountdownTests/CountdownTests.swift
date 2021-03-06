//
//  CountdownTests.swift
//  CountdownTests
//
//  Created by Richard Robinson on 2020-07-31.
//

import XCTest
@testable import Countdown

extension Sequence where Element: Hashable {
    /// Returns an array containing all the elements of this Sequence, with no duplicate elements
    func distinct() -> [Element] {
        var set: Set<Element> = []
        return filter { set.insert($0).inserted }
    }
}

class CountdownTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testUniqueSequence() throws {

    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
        }
    }

}
