//
//  VehicleTests.swift
//  CICDTests
//
//  Created by Atif Saeed on 21/02/2025.
//  Copyright © 2025 SYSTEMS LTD. All rights reserved.
//

import XCTest
@testable import CICD

final class VehicleTests: XCTestCase {

    var mercedes: Vehicle!
    var boeing: Vehicle!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        mercedes = Vehicle(type: .Car)
        boeing = Vehicle(type: .PassengerAircraft)
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        mercedes = nil
        boeing = nil
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    
    func testPlaneFasterThanCar() {
        //Act
        let minutes = 60
        
        //Arrenge
        mercedes.startEngine(minutes: minutes)
        boeing.startEngine(minutes: minutes)
        
        //Assert
        XCTAssertTrue(boeing.returnMiles() < mercedes.returnMiles())
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
