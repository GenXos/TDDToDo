//
//  ToDoItemTests.swift
//  TDDToDo
//
//  Created by Todd Fields on 2016-10-13.
//  Copyright © 2016 Skullgate Studios. All rights reserved.
//

import XCTest
@testable import TDDToDo

class ToDoItemTests: XCTestCase {
    
    override func setUp() {
        super.setUp()

    }
    
    override func tearDown() {

        
        
        super.tearDown()
    }
    
    func testInit_ShouldSetTitle() {
        
        let item = ToDoItem(title: "Test Title")
        
        XCTAssertEqual(item.title, "Test Title", "initializer should set the item title")
    }
    
    func testInit_ShouldSetTitleAndDescription() {
        
        let item = ToDoItem(title: "Test Title", itemDescription: "Test Description")
        
        XCTAssertEqual(item.itemDescription, "Test Description", "initializer should set the item description")
    }
    
    func testInit_ShouldSetTitleAndDescriptionAndTimestamp() {
        
        let item = ToDoItem(title: "Test Title", itemDescription: "Test Description",
                            timestamp: 0.0)
        
        XCTAssertEqual(item.timestamp , 0.0, "initializer should set the timestamp")
    }
    
    func testInit_ShouldSetTitleAndDescriptionAndTimestampAndLocation() {
            
        let location = Location(name: "Test name")
        let item = ToDoItem(title: "Test Title", itemDescription: "Test Description",
                            timestamp: 0.0, location: location)
        
        XCTAssertEqual(location.name , item.location?.name, "initializer should set the location")
    }
    
}
