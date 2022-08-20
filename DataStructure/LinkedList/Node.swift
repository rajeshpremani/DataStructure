//
//  Node.swift
//  DataStructure
//
//  Created by Rajesh Kumar Sahil on 13/08/2022.
//

import Foundation

/// Nodes have two responsibilities:
public class LLNode<T>{
    /// Hold a value
    var value:T
    
    /// Hold a reference to the next node. A nil lvalue represents the end of the list.
    var next:LLNode?
    
    
    var previous:LLNode?
    
    init(value: T, next:LLNode? = nil) {
        self.value = value
        self.next = next
    }
}

extension LLNode: CustomStringConvertible {
  public var description: String {
    guard let next = next else {
      return "\(value)"
    }
    return "\(value) -> " + String(describing: next) + " "
  }
}
