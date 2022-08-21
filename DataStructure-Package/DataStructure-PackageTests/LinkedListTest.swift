//
//  LinkedListTest.swift
//  DataStructure-PackageTests
//
//  Created by Rajesh Kumar Sahil on 21/08/2022.
//

import XCTest
@testable import DataStructure_Package

class LinkedListTest: XCTestCase {
    

    func testCount(){
        let list = LinkedList<Int>()
        list.append(10)
        list.append(20)
        XCTAssertEqual(list.first?.value, 10)
        XCTAssertEqual(list.last?.value, 20)
        XCTAssertEqual(list.count, 2)
        XCTAssertFalse(list.isEmpty)
    }
    
    func testPrint(){
        let list = LinkedList<Int>()
        list.append(10)
        list.append(20)
        XCTAssertEqual(list.print, "[10, 20]")
    }
    
    func testNodeAtIndex(){
        let list = LinkedList<Int>()
        list.append(10)
        XCTAssertEqual(list.node(at: 0).value, 10)
    }
    
    func testInsertAtIndex(){
        let list = LinkedList<Int>()
        list.insert(value: 10, at: 0)
        list.insert(value: 20, at: 1)
        list.insert(value: 30, at: 0)
        XCTAssertEqual(list.print, "[30, 10, 20]")
        
        XCTAssertEqual(list.remove(at: 2), 20)
        XCTAssertEqual(list.remove(at: 1), 10)
        XCTAssertEqual(list.remove(at: 0), 30)
        
        XCTAssertTrue(list.isEmpty)
    }
    
    func testPush(){
        let list = LinkedList<Int>()
        list.push(10)
        list.push(20)
        list.push(30)
        XCTAssertEqual(list.print, "[30, 20, 10]")
    }
    
    
    func testReverse(){
        let list = LinkedList<Int>()
        list.push(10)
        list.push(20)
        list.push(30)
        XCTAssertEqual(list.print, "[30, 20, 10]")
        XCTAssertEqual(list.reverse(), "[10, 20, 30]")
    }
    
    
}
