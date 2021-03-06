//
//  ZooKeeperTests.swift
//  ZooKeeperTests
//
//  Created by Wayne Bangert on 2/4/16.
//  Copyright © 2016 Wayne Bangert. All rights reserved.
//

import XCTest
@testable import ZooKeeper

class ZooKeeperTests: XCTestCase {
    
    func test_ParseValidJSONFile_CreatesZooObject() {
        if let zoo = ZooFactory.zooFromJSONFileNamed("zoo!") {
            XCTAssertGreaterThan(zoo.staff.count, 0, "zoo should have items")
            XCTAssertGreaterThan(zoo.animals.count, 0, "zoo should have items")
        } else {
            XCTFail("should have zoo")
        }
        
    

    }
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
