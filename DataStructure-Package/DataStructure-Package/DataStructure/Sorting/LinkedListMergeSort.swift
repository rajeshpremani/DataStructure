//
//  LinkedListMergeSort.swift
//  DataStructure-Package
//
//  Created by Rajesh Kumar Sahil on 23/08/2022.
//

import Foundation


class LinkedListMergeSort{
    func repeatedCharacter(_ s: String) -> Character {
        var dic:[Character:Character] = [:]
        let char:Character = Character("a")
        for i in s{
            if dic[i] == nil {
                dic[i] = i
            }else {
                return i
            }
        }
        return char
    }

    ///  Sorts a linkedlist in ascending order
    ///-- Recursively divide the linked list into sublists containing a single node
    ///-- Repeatedly merge the sublists to produce sorted sublists until one remains
    ///Returns a sorted linked list
    
//    func mergeSort(_ linkedList: LinkedList<Any>) -> LinkedList<Any>{
//        if linkedList.count <= 1 {
//            return linkedList
//        }
//
//        var (leftHalf, rightHalf) = split(linkedList)
//        var leftNode = mergeSort(leftHalf)
//        var rightNode = mergeSort(rightHalf)
//
//        return merge(leftNode, rightNode)
//
//    }
    
    
//    func split(_ linkedList: LinkedList<Any>) -> (firstHalf:LinkedList<Any>, secondHalf:LinkedList<Any>) {
//        if linkedList.isEmpty || linkedList.head == nil {
//            var leftHalf = linkedList
//            var rightHalf:LinkedList<Any>?
//            return (leftHalf, rightHalf)
//        }
//    }
    
//    func merge(_ left: LinkedList<Any>, _ right: LinkedList<Any>) -> LinkedList<Any>{
//
//    }
    
}
