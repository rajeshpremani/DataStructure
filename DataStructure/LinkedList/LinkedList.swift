//
//  LinkedList.swift
//  DataStructure
//
//  Created by Rajesh Kumar Sahil on 13/08/2022.
//

import Foundation

/// A linked list has the concept of a head and tail, which refers to the first and last nodes of the list respectively
public struct LinkedList<Value> {
    var head: Node<Value>?
    var tail: Node<Value>?
    
    public init() {}
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    /// Adding a value at the front of the list is known as a push operation. This is also known as head-first insertion.
    public mutating func push(_ value: Value) {
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head }
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
