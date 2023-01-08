//
//  DataStructure_PackageTests.swift
//  DataStructure-PackageTests
//
//  Created by Rajesh Kumar Sahil on 20/08/2022.
//


import XCTest
@testable import DataStructure_Package

class DataStructure_PackageTests: XCTestCase {
    
    func testMergeSort(){
        let sort = MergeSort()
        XCTAssertEqual(sort.mergeSort(list: [2,5,3,6,8,1]), [1,2,3,5,6,8])
    }


    func testMergeSortVerify(){
        let sort = MergeSort()
        XCTAssertTrue(sort.verifyMergeSort(list: sort.mergeSort(list: [2,5,3,6,8,1])))
        XCTAssertFalse(sort.verifyMergeSort(list: [2,5,3,6,8,1]))
    }
    
    func testQuickSort(){
        let sort = QuickSort()
        XCTAssertEqual(sort.sort([3,2,1,1,5,4,7,3]), [1, 1, 2, 3, 3, 4, 5, 7])
        
    }
    
    
    func testRecursing(){
        let recursion = Recursion()
        XCTAssertEqual(recursion.decimalToBinart(decimal: 233, result: ""), "11101001")
        XCTAssertEqual(recursion.sumOfNaturalNumber(value: 5), 15)
    }
    
    func testBinarySearchRecursion(){
        let recursion = Recursion()
        let array = [-1,1,2,3,4,7,8,9,10]
        XCTAssertEqual(recursion.binarySearch(list: array, left: 0, right: array.count - 1, x: 9), 7)
    }
    
    func testFib(){
        let recursion = Recursion()
        XCTAssertEqual(recursion.fib(value: 5), 8)
    }
    
}
