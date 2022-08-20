//
//  LinkedList.swift
//  DataStructure
//
//  Created by Rajesh Kumar Sahil on 13/08/2022.
//

import Foundation

/// A linked list has the concept of a head and tail, which refers to the first and last nodes of the list respectively
public struct LinkedList<T> {
    
    public typealias Node = LLNode<T>
    
    var head: Node?
    var tail: Node?
    
    public init() {}
    
    
    public var first: Node?{
        return head
    }
    
    public var last: Node?{
        guard var node = head else {return nil}
        while let next = node.next {
            node = next
        }
        return node
    }
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    //MARK: Adding Values to LinkedList
    ///There are three ways to add values to a linked list, each having their own unique performance characteristics:
    ///1. push: Adds a value at the front of the list.
    ///2. append: Adds a value at the end of the list.
    ///3. insert(after:): Adds a value after a particular node of the list.
    
    /// Adding a value at the front of the list is known as a push operation. This is also known as head-first insertion.
    public mutating func push(_ value: T) {
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head
        }
    }
    
    
    /// The next operation you’ll look at is append. This is meant to add a value at the end of the list, and is known as tail-end insertion.
    public mutating func append(_ value: T) {
        // 1
        ///Like before, if the list is empty, you’ll need to update both head and tail to the new node. Since append on an empty list is functionally identical to push, you simply invoke push to do the work for you.
        guard !isEmpty else {
            push(value)
            return
        }
        // 2
        /// In all other cases, you simply create a new node after the tail node. Force unwrapping is guaranteed to succeed since you push in the isEmpty case with the above guard statement.
        tail!.next = Node(value: value)
        // 3
        /// Since this is tail-end insertion, your new node is also the tai lof the list
        tail = tail!.next
    }
    
    
    func node(at index: Int) -> Node? {
        // 1
        var currentNode = head
        var currentIndex = 0
        // 2
        while currentNode != nil && currentIndex < index {
            currentNode = currentNode!.next
            currentIndex += 1
        }
        return currentNode
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
