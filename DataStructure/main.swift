//
//  main.swift
//  DataStructure
//
//  Created by Rajesh Kumar Sahil on 12/08/2022.
//

import Foundation


/// ---Example of creating and linking nodes---
let node1 = Node(value: 1)
let node2 = Node(value: 2)
let node3 = Node(value: 3)

node1.next = node2
node2.next = node3

print(node1)
print(node2)


func exampleOfPush() {
    print("Example Of Push")
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)
    print(list)
}


exampleOfPush()
