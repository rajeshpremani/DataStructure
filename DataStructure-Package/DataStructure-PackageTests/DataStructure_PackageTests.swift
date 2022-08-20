//
//  DataStructure_PackageTests.swift
//  DataStructure-PackageTests
//
//  Created by Rajesh Kumar Sahil on 20/08/2022.
//

import XCTest
@testable import DataStructure_Package

class DataStructure_PackageTests: XCTestCase {
    
    func testPush(){
        var list = LinkedList<Int>()
        list.push(10)
        XCTAssertNotNil(list)
        XCTAssertFalse(list.isEmpty)
    }
    
    func testBinarySearch(){
//        let search = Searching()
//        XCTAssertTrue(search.binarySearch([1,2,3,4,5,6,7], target: 5))
    }
    
    
    func testMergeSort(){
        let sort = MergeSort()
        XCTAssertEqual(sort.mergeSort(list: [2,5,3,6,8,1]), [1,2,3,5,6,8])
    }


    func testMergeSortVerify(){
        let sort = MergeSort()
        XCTAssertTrue(sort.verifyMergeSort(list: sort.mergeSort(list: [2,5,3,6,8,1])))
        XCTAssertFalse(sort.verifyMergeSort(list: [2,5,3,6,8,1]))
    }
}
