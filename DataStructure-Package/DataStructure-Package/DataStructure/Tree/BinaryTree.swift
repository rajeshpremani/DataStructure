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
    
    
    func depthFirstValues(root:BTNode<String>) -> [String]{
        var stack:[BTNode] = [root]
        var dfv:[String] = []
        while stack.count > 0 {
            let current = stack.removeLast()
            dfv.append(current.value)
            if let right = current.right{
                stack.append(right)
            }
            if let left = current.left {
                stack.append(left)
            }
        }
        return dfv
    }

    
    func depthFirstValuesRecursive(root:BTNode<String>?) -> [String]{
        if root == nil {return []}
        let left = depthFirstValuesRecursive(root: root?.left)
        let right = depthFirstValuesRecursive(root: root?.right)
        
        return [root!.value] + left + right
    }
    
    
    func breadthFirstValues(root:BTNode<String>) -> [String]{
        var queue:[BTNode] = [root]
        var bfv:[String] = []
        
        while queue.count > 0 {
            let current = queue.removeFirst()
            bfv.append(current.value)
            
            if let left = current.left {
                queue.append(left)
            }
            
            if let right = current.right{
                queue.append(right)
            }
        }
        return bfv
    }
}


