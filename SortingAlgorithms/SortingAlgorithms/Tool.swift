//
//  Tool.swift
//  AlgorithmAccumulation
//
//  Created by lzn on 16/2/24.
//  Copyright © 2016年 Study. All rights reserved.
//

import Foundation

/**
 一行打印数组
 
 - parameter array: 需要打印的数组
 */
func printArray<T>(array: [T]) -> Void {
    var sum: String = String()
    for item in array {
        let s = String(item) + "  "
        sum += s
    }
    print(sum)
    
//    //遍历数组,需要索引时用此方法
//    for (index, value) in array.enumerate() {
//        print("index : \(index) value: \(value)")
//    }
}