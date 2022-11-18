//
//  BinaryTree.swift
//  DataStructure-Package
//
//  Created by Rajesh Kumar Sahil on 18/11/2022.
//

import Foundation


class BTNode<T>{
    var value:T
    var left:BTNode?
    var right:BTNode?
    
    init(value:T){
        self.value = value
    }
}

class BinaryTree{
    
    
    func depthFirstSearch(root:BTNode<String>) -> [String]{
        var stack:[BTNode] = [root]
        var dfs:[String] = []
        while stack.count > 0 {
            let current = stack.removeLast()
            dfs.append(current.value)
            if let right = current.right{
                stack.append(right)
            }
            if let left = current.left {
                stack.append(left)
            }
        }
        return dfs
    }

    
    func depthFirstSearchRecursive(root:BTNode<String>?) -> [String]{
        if root == nil {return []}
        let left = depthFirstSearchRecursive(root: root?.left)
        let right = depthFirstSearchRecursive(root: root?.right)
        
        return [root!.value] + left + right
    }
}


