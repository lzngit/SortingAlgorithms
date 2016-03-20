//
//  MergeTwoOrderedArray.swift
//  SortingAlgorithms
//  合并两个有序数组
//  Created by lzn on 16/3/20.
//  Copyright © 2016年 go. All rights reserved.
//

import Foundation

func mergeTwoOrderedArray(firstArray firstArray: [Int], secondArray: [Int]) -> [Int] {
    let n = firstArray.count
    let m = secondArray.count
    var resultArray: [Int] = Array(count: n+m, repeatedValue: 0)

    var i: Int = 0
    var j: Int = 0
    var k: Int = 0
    while (i < n && j < m) {
        if (firstArray[i] < secondArray[j]) {
            resultArray[k++] = firstArray[i++]
        }else {
            resultArray[k++] = secondArray[j++]
        }
    }
    while (i < n) {
        resultArray[k++] = firstArray[i++]
    }
    
    while (j < m) {
        resultArray[k++] = secondArray[j++]
    }
    return resultArray
}
