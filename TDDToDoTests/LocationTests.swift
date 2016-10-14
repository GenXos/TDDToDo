//
//  LocationTests.swift
//  TDDToDo
//
//  Created by Todd Fields on 2016-10-13.
//  Copyright © 2016 Skullgate Studios. All rights reserved.
//

import XCTest
@testable import TDDToDo
import CoreLocation

class LocationTests: XCTestCase {
    
    override func setUp() {
        super.setUp()

    }
    
    override func tearDown() {

        
        
        super.tearDown()
    }
    
    func testInit_ShouldSetNameAndCoordinate() {
        
        let testCoordinate = CLLocationCoordinate2D(latitude: 1, longitude: 2)
        let location = Location(name: "", coordinate: testCoordinate)
        
        XCTAssertEqual(location.coordinate?.latitude, testCoordinate.latitude, "initializer should set latitude")
        XCTAssertEqual(location.coordinate?.longitude, testCoordinate.longitude, "initializer should set longitude")
        
    }
    
    func testInit_ShouldSetName() {
        
        let location = Location(name: "Test name")
        
        XCTAssertEqual(location.name, "Test name", "initializer should set the name")
    }
    
}
