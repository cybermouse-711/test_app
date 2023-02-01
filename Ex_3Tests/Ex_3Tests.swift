//
//  Ex_3Tests.swift
//  Ex_3Tests
//
//  Created by Елизавета Медведева on 02.02.2023.
//

import XCTest
@testable import Ex_3

final class Ex_3Tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRockResult() throws {
        let sign = Sign.rock
        print (sign)
        print (sign.emoji)
        XCTAssert(sign.getResult(for: .rock) == .draw)
        XCTAssert(sign.getResult(for: .paper) == .lose)
        XCTAssert(sign.getResult(for: .scissors) == .win)
    }

    func testPaperResult() throws {
        let sign = Sign.paper
        XCTAssert(sign.getResult(for: .rock) == .win)
        XCTAssert(sign.getResult(for: .paper) == .draw)
        XCTAssert(sign.getResult(for: .scissors) == .lose)
    }
    func testScissorsResult() throws {
        let sign = Sign.scissors
        XCTAssert(sign.getResult(for: .rock) == .lose)
        XCTAssert(sign.getResult(for: .paper) == .win)
        XCTAssert(sign.getResult(for: .scissors) == .draw)
    }
}


