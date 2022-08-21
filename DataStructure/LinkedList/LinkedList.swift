//
//  LinkedList.swift
//  DataStructure
//
//  Created by Rajesh Kumar Sahil on 13/08/2022.
//

import Foundation

/// A linked list has the concept of a head and tail, which refers to the first and last nodes of the list respectively
public class LinkedList<T> {
    
    public typealias Node = LLNode<T>
    
    var head: Node?
    var tail: Node?
    
    public init() {}
    
    /// returns first node of the list
    public var first: Node?{
        return head
    }
    
    /// return last node of the list
    public var last: Node?{
        guard var node = head else {return nil}
        while let next = node.next {
            node = next
        }
        return node
    }
    
    public var count:Int{
        guard var node = head else {return 0}
        var counter = 1
        while let next = node.next{
            node = next
            counter += 1
        }
        return counter
    }
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    
    public var print:String{
        var stringArray = "["
        guard var node = head else {return stringArray + "]"}
        stringArray = stringArray + "\(node.value)"
        while let next = node.next{
            node = next
            stringArray = stringArray + ", \(next.value)"
        }
        return stringArray + "]"
    }
    
    //MARK: Adding Values to LinkedList
    ///There are three ways to add values to a linked list, each having their own unique performance characteristics:
    ///1. push: Adds a value at the front of the list.
    ///2. append: Adds a value at the end of the list.
    ///3. insert(after:): Adds a value after a particular node of the list.
    
    /// Adding a value at the front of the list is known as a push operation. This is also known as head-first insertion.
    public func push(_ value: T) {
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head
        }
    }
    
    
    /// The next operation you’ll look at is append. This is meant to add a value at the end of the list, and is known as tail-end insertion.
    public func append(_ value: T) {
       let newNode = Node(value: value)
        if let lastNode = last{
            newNode.previous = lastNode
            lastNode.next = newNode
        }else{
            /// No nodes in the list
            head = newNode
        }
    }
    
    
    public func node(at index: Int) -> Node {
        if index == 0{
            return head!
        }else{
            var node = head?.next
            for _ in 1..<index{
                node = node?.next
                if node?.next == nil {break}
            }
            return node!
        }
    }
    
    public func insert(value:T, at index:Int){
        let newNode = Node(value: value)
        if index == 0{
            newNode.next = head
            head?.previous = newNode
            head = newNode
        }else{
            let previousNode = node(at: index - 1)
            newNode.next = previousNode.next
            newNode.previous = previousNode
            previousNode.next = newNode
            
        }
    }
    
    public func remove(at index:Int) -> T{
        let nodeToRemove = node(at: index)
        return remove(node: nodeToRemove)
    }
    
    public func remove(node:Node) -> T{
        let previous = node.previous
        let next = node.next
        
        if let previous = previous {
            previous.next = next
        }else{
            head = next
        }
        next?.previous = previous
        
        node.previous = nil
        node.next = nil
        return node.value
    }
    
    /// Return new reversed list
    public func reverse() -> String?{
        let list = LinkedList<T>()
        list.push(head!.value)
        guard var node = head else {return nil}
        while let next = node.next{
            list.push(next.value)
            node = next
        }
        return list.print
    }
}



extension LinkedList: CustomStringConvertible {
    public var description: String {
        guard let head = head else {
            return "Empty list"
        }
        return String(describing: head)
    }
}
