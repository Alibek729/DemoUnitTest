//
//  DemoUnitTestTests.swift
//  DemoUnitTestTests
//
//  Created by Alibek Kozhambekov on 16.01.2023.
//

import XCTest
@testable import DemoUnitTest

final class DemoUnitTestTests: XCTestCase {
    
    var sut: ViewController!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = ViewController()
    }

    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }
    
    func testLowestVolumeSouldBeZero() {
        sut.setVolume(value: -100)
        
        let volume = sut.volume
        XCTAssert(volume == 0, "Lowest value should be 0.")
    }
    
    func testHighestVolumeShouldBeHundred() {
        sut.setVolume(value: 200)
        
        let volume = sut.volume
        XCTAssert(volume == 100, "Highest value should be 100.")
    }
}
