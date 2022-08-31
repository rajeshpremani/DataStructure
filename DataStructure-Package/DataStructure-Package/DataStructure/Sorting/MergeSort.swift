//
//  MergeSort.swift
//  DataStructure-Package
//
//  Created by Rajesh Kumar Sahil on 20/08/2022.
//

import Foundation


class MergeSort{
    
    /// Sorts a list in accending order
    /// - Parameter list: Unsorted List
    /// - Returns: Returns a new sorted list
    public func mergeSort(list: [Int]) -> [Int]{
        
        /// Divide: Find the midpoint of the list and divide into sublists
        /// Conquer: Recursively sorts the sublists created in previous steps.
        /// Combine: Merge the sorted sublists created in previous steps.
        /// Takes overall O(n log n)  -- n for merge and log n for split, by multipling we get O(n log n)
        if list.count <= 1 {
            return list
        }
        
        let (leftHalf, rightHalf) = split(list: list)
        let left = mergeSort(list: leftHalf)
        let right = mergeSort(list: rightHalf)
        
        return merge(first: left, second: right)
    }
    
    /// Divide the unsorted list at midpoint into sublists,
    /// - Parameter list: List that need to split
    /// - Returns: Returns two sublists left and right
    /// Takes overall O(log n) time
    func split(list:[Int]) -> (firstHalf:[Int], secondHalf:[Int]) {
        let midpoint = list.count / 2

        let firstHalf = Array(list[..<midpoint])
        let secondHalf = Array(list[midpoint...])
        return (firstHalf, secondHalf)
    }

    /// Merge two lists sorting them in the process
    /// Return a new merged list
    /// Runs in overall O(n) time
    func merge(first:[Int], second:[Int]) -> [Int]{
        var sortArr:[Int] = []
        var i:Int = 0
        var j:Int = 0
        while i < first.count && j < second.count {
            if first[i] < second[j]{
                sortArr.append(first[i])
                i += 1
            }else {
                sortArr.append(second[j])
                j += 1
            }
        }
         
        while i < first.count {
            sortArr.append(first[i])
            i += 1
        }
        
        while j < second.count {
            sortArr.append(second[j])
            j += 1
        }
        return sortArr
    }
    
    public func verifyMergeSort(list:[Int]) -> Bool{
        if list.isEmpty || list.count == 1 {
            return true
        }
        
        return list[0] < list[1] && verifyMergeSort(list: Array(list[1...]))
    }
}


//let arrayList = ["@alex", "@jason", "@jessica", "@john"]
//let midpoint = arrayList.count / 2
//
//let firstHalf = Array(arrayList[..<midpoint])
//let secondHalf = Array(arrayList[midpoint...])
//
//
////Generic Method
//public func slice<T>(arrayList:[T], limit:Int) -> [T]{
//    return Array(arrayList[..<limit])
//}
//
////How to use
//let firstThreeElements = slice(arrayList: ["@alex", "@jason", "@jessica", "@john"], limit: 3)
