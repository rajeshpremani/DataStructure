//
//  BinaryTreeTest.swift
//  DataStructure-PackageTests
//
//  Created by Rajesh Kumar Sahil on 18/11/2022.
//

import XCTest
@testable import DataStructure_Package

class BinaryTreeTest: XCTestCase {

    let tree = BinaryTree()
    
    func testDFV(){
        let root = makeBinaryTree()
        
        XCTAssertEqual(tree.depthFirstValues(root: root), ["a","b","d","e","c","f"])
        XCTAssertEqual(tree.depthFirstValuesRecursive(root: root), ["a","b","d","e","c","f"])
    }
    
    func testSearchDF(){
        let root = makeBinaryTree()
        XCTAssertEqual(tree.searchDF(root: root, target: "e"), true)
    }
    
    func testSearchDFRecursive(){
        let root = makeBinaryTree()
        XCTAssertEqual(tree.searchDFRecursive(root: root, target: "d"), true)
    }
    
    func testSearchBF(){
        let root = makeBinaryTree()
        XCTAssertEqual(tree.searchBF(root: root, target: "a"), true)
    }
    
    func testBFV(){
        let root = makeBinaryTree()
        
        XCTAssertEqual(tree.breadthFirstValues(root: root), ["a","b","c","d","e","f"])
        
    }
    
    func testSum(){
        let root = makeBinaryTreeInt()
        XCTAssertEqual(tree.sum(root: root), 25)
    }
    
    func testSumRecursive(){
        let root = makeBinaryTreeInt()
        XCTAssertEqual(tree.sumRecursive(root: root), 25)
    }
    
    func testMinValue(){
        let root = makeBinaryTreeInt()
        XCTAssertEqual(tree.findMinValue(root: root), 1)
    }
    
    func testMinValueRecursive(){
        let root = makeBinaryTreeInt()
        XCTAssertEqual(tree.findMinValueRecursive(root: root), 1)
    }
    
    func testMaxPathSum(){
        let root = makeBinaryTreeInt()
        XCTAssertEqual(tree.maxPathSum(root: root), 18)
    }
    
    func testMaxDepth(){
        let root = makeBinaryTreeInt()
        XCTAssertEqual(tree.maxDepth(root: root), 3)
    }
    
    func testInverse(){
        let root = makeBinaryTree()
        XCTAssertEqual(tree.inverse(root: root), ["a", "c", "b", "f", "e", "d"])
    }
    
    private func makeBinaryTree() -> BTNode<String> {
        let a = BTNode(value: "a")
        let b = BTNode(value: "b")
        let c = BTNode(value: "c")
        let d = BTNode(value: "d")
        let e = BTNode(value: "e")
        let f = BTNode(value: "f")


        a.left = b
        a.right = c
        b.left = d
        b.right = e
        c.right = f
        
        return a
    }
    
    private func makeBinaryTreeInt() -> BTNode<Int> {
        let a = BTNode(value: 3)
        let b = BTNode(value: 11)
        let c = BTNode(value: 4)
        let d = BTNode(value: 4)
        let e = BTNode(value: 2)
        let f = BTNode(value: 1)


        a.left = b
        a.right = c
        b.left = d
        b.right = e
        c.right = f
        
        return a
    }

}
