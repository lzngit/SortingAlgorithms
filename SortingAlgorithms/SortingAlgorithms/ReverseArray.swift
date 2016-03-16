//
//  ReverseArray.swift
//  AlgorithmAccumulation
//  反转数组
//  Created by lzn on 16/3/16.
//  Copyright © 2016年 Study. All rights reserved.
//

import Foundation

/**
 反转数组
 
 - parameter sArray: 源数组,不改变源数组
 
 - returns: 反转后的数组(新数组)
 */
func reverseArray<T>(sArray: [T]) -> [T] {
    var resultArray: [T] = sArray
    var left: Int = 0
    var right: Int = sArray.count - 1
    while (left < right) {
        swap(&resultArray[left], &resultArray[right])
        left++
        right--
    }
    return resultArray
}


