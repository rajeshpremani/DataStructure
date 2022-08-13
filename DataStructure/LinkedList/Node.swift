//
//  Node.swift
//  DataStructure
//
//  Created by Rajesh Kumar Sahil on 13/08/2022.
//

import Foundation

/// Nodes have two responsibilities:
class Node<Value>{
    /// Hold a value
    var value:Value
    
    /// Hold a reference to the next node. A ni lvalue represents the end of the list.
    var next:Node?
    
    init(value: Value, next:Node? = nil) {
        self.value = value
        self.next = next
    }
}

extension Node: CustomStringConvertible {
  public var description: String {
    guard let next = next else {
      return "\(value)"
    }
    return "\(value) -> " + String(describing: next) + " "
  }
}
