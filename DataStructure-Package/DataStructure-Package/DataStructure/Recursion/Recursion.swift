//
//  Recursion.swift
//  DataStructure-Package
//
//  Created by Rajesh Kumar Sahil on 19/11/2022.
//

import Foundation


class Recursion{
    ///Converting Decimal Numbers into binary numbers
    func decimalToBinart(decimal:Int, result:String) -> String{
        if decimal == 0 {
            return result
        }
        var newResult = result
        newResult = "\(decimal % 2)\(result)"
        return decimalToBinart(decimal: decimal / 2, result: newResult)
    }
    
    ///Sum of Natural Numbers
    func sumOfNaturalNumber(value:Int) -> Int{
        if value == 0 {
            return 0
        }
        
        return value + sumOfNaturalNumber(value: value - 1)
    }
    
    ///Binary Search
    func binarySearch(list:[Int], left:Int, right:Int, x:Int) -> Int{
        if left > right {
            return -1
        }
        
        let mid = (left + right) / 2
        
        if list[mid] == x {
            return mid
        }
        
        if x > list[mid] {
            return binarySearch(list: Array(list[mid...]), left: mid + 1, right: right, x: x)
        }
        
        return binarySearch(list: Array(list[0..<mid]), left: left, right: mid - 1, x: x)
    }
}
