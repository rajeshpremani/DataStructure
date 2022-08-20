//
//  BinarySearch.swift
//  DataStructure-Package
//
//  Created by Rajesh Kumar Sahil on 20/08/2022.
//

import Foundation

public class Searching{
    
    public func binarySearch(_ value: [Int], target:Int) -> Bool{
        
        var first = 0
        var last = value.count - 1
        
        let mid = (first + last) / 2

        while first < last {
            if value[mid] == target{
                return true
            }else if target > mid{
                first = mid + 1
                
            }else {
                last = mid - 1
            }
        }
        return false
    }
    
}
