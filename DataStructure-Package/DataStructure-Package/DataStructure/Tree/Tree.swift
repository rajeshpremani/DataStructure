//
//  Tree.swift
//  DataStructure-Package
//
//  Created by Rajesh Kumar Sahil on 24/08/2022.
//

import Foundation

public class TreeNode<T>{
    var value:T
    var children:[TreeNode] = []
    
    init(_ value: T) {
        self.value = value
    }
    
    public func add(_ child: TreeNode){
        children.append(child)
    }
}


//extension TreeNode {
//    public func forEachDepthFirst(visit: (TreeNode) -> Void)
//    visit(self)
//    children.forEach {
//        $0.forEachDepthFirst(visit: visit)
//    }
//}
