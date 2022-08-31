//
//  QuickSort.swift
//  DataStructure-Package
//
//  Created by Rajesh Kumar Sahil on 30/08/2022.
//

import Foundation

class QuickSort{
    func sort(_ values:[Int]) -> [Int] {
        if values.count <= 1 {return values}
        
        let pivot:Int = values[0]
        var lessThanPivot:[Int] = []
        var greaterThanPivot:[Int] = []
        
        for i in 1..<values.count {
            if values[i] <= pivot{
                lessThanPivot.append(values[i])
            }else{
                greaterThanPivot.append(values[i])
            }
        }
        print(lessThanPivot, pivot, greaterThanPivot)
        return sort(lessThanPivot) + [pivot] + sort(greaterThanPivot)
    }
}
