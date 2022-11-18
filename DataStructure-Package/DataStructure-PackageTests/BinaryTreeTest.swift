//
//  BinaryTreeTest.swift
//  DataStructure-PackageTests
//
//  Created by Rajesh Kumar Sahil on 18/11/2022.
//

import XCTest
@testable import DataStructure_Package

class BinaryTreeTest: XCTestCase {

    
    func testDFS(){
        let tree = BinaryTree()
        let root = makeBT()
        
        XCTAssertEqual(tree.depthFirstSearch(root: root), ["a","b","d","e","c","f"])
        XCTAssertEqual(tree.depthFirstSearchRecursive(root: root), ["a","b","d","e","c","f"])
    }
    
    private func makeBT() -> BTNode<String> {
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

}
