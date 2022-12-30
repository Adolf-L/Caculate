//
//  BasicTests.swift
//  
//
//  Created by bigluo on 2022/12/31.
//

import XCTest
@testable import Caculate

final class BasicTests: XCTestCase {
    var basic: Basic!
    
    override func setUp() async throws {
//        basic = Basic()
    }
    
    func testAdd() -> Void {
        let a = 1
        let b = 2
        XCTAssertEqual(3, Caculate(isOn: true).add(numLeft: a, numRight: b))
    }
    
    func testSub() -> Void {
        let a = 10
        let b = 5
        XCTAssertEqual(5, Caculate(isOn: true).add(numLeft: a, numRight: b))
    }
    
    func testCombine() -> Void {
        let a = 1
        let b = 2
        let c = 4
        
        let addResult = Caculate(isOn: true).add(numLeft: a, numRight: b)
        let subResult = Caculate(isOn: true).sub(numLeft: c, numRight: a)
        
        XCTAssertEqual(6, Caculate(isOn: true).add(numLeft: addResult, numRight: subResult))
    }

}
