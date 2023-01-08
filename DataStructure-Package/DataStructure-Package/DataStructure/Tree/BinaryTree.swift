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
    
    func searchDF(root:BTNode<String>, target:String) -> Bool{
        var stack:[BTNode] = [root]
        while stack.count > 0{
            let current = stack.removeLast()
            if current.value == target{
                return true
            }else{
                if let right = current.right{
                    stack.append(right)
                }
                if let left = current.left{
                    stack.append(left)
                }
            }
        }
        return false
    }
    
    func searchDFRecursive(root:BTNode<String>?, target:String) -> Bool{
        if root == nil {return false}
        let left = searchDFRecursive(root: root?.left, target: target)
        let right = searchDFRecursive(root: root?.right, target: target)
        
        if root?.value == target {
            return true || left || right
        }else{
            return false || left || right
        }
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
    
    func searchBF(root:BTNode<String>, target:String) -> Bool{
        var queue:[BTNode] = [root]
        while queue.count > 0{
            let current = queue.removeFirst()
            if current.value == target{
                return true
            }else{
                if let left = current.left{
                    queue.append(left)
                }
                
                if let right = current.right{
                    queue.append(right)
                }
            }
        }
        return false
    }
    
    func sum(root:BTNode<Int>) -> Int{
        var stack:[BTNode] = [root]
        var sum:Int = 0
        while stack.count > 0 {
            let current = stack.removeLast()
            sum += current.value
            
            if let right = current.right{
                stack.append(right)
            }
            
            if let left = current.left{
                stack.append(left)
            }
        }
        return sum
    }
    
    func sumRecursive(root:BTNode<Int>?) -> Int{
        if root == nil {return 0}
        return root!.value + sumRecursive(root: root?.left) + sumRecursive(root: root?.right)
    }
    
    func findMinValue(root:BTNode<Int>) -> Int{
        var min:Int?
        var queue:[BTNode] = [root]
        
        while queue.count > 0{
            let current = queue.removeFirst()
            if min == nil{
                min = current.value
            }else if current.value < min! {
                min = current.value
            }
            
            if let left = current.left{
                queue.append(left)
            }
            if let right = current.right{
                queue.append(right)
            }
        }
        
        return min!
        
    }
    
    func findMinValueRecursive(root:BTNode<Int>?) -> Int{
        if root == nil {return Int.max}
        
        let left = findMinValueRecursive(root: root?.left)
        let right = findMinValueRecursive(root: root?.right)
        

        if root!.value < left && root!.value < right{
            return root!.value
        }else if left < root!.value && left < right{
            return left
        }else{
            return right
        }
    }
    
    func maxPathSum(root:BTNode<Int>?) -> Int {
        if root?.left == nil && root?.right == nil {return root?.value ?? 0}
        
        let left = maxPathSum(root: root?.left)
        let right = maxPathSum(root: root?.right)
        
        if left > right {
            return root!.value + left
        }else{
            return root!.value + right
        }
    }
    
    func maxDepth(root:BTNode<Int>?) -> Int{
        guard let root = root else {
            return 0
        }

        let leftSideNodeDepth = maxDepth(root: root.left) + 1
        let rightSideNodeDepth = maxDepth(root: root.right) + 1
        
        return leftSideNodeDepth > rightSideNodeDepth ? leftSideNodeDepth : rightSideNodeDepth
    }
    
    func inverse(root:BTNode<String>?) -> [String]?{
        guard let root = root else {
            return nil
        }

        let temp = root.left
        root.left = root.right
        root.right = temp
        
        _ = inverse(root: root.left)
        _ = inverse(root: root.right)
        
        return breadthFirstValues(root: root)
    }
    
    func inverse2(root:BTNode<String>?) -> BTNode<String>?{
        guard let root = root else {
            return nil
        }
        
        root.right = inverse2(root: root.left)
        root.left = inverse2(root: root.right)
        
        return root
    }
}


