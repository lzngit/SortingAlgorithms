//
//  main.swift
//  SortingAlgorithms
//
//  Created by lzn on 16/3/16.
//  Copyright © 2016年 go. All rights reserved.
//

import Foundation

let sArray = [1,2,3,4,5,6,7,8,9]
print("需要反转的数组")
printArray(sArray)
print("反转后的数组")
printArray(reverseArray(sArray))
print("Swift数组提供的反转方法")
printArray(sArray.reverse())
print("===============================")

let firstArray = [1,3,5,7,9]
let secondArray = [2,4,6,8,10,12]


print("需要合并的第1个数组有序序列")
printArray(firstArray)
print("需要合并的第2个数组有序序列")
printArray(secondArray)
print("合并后的数组序列:")
printArray(mergeTwoOrderedArray(firstArray: firstArray, secondArray: secondArray))
print("===============================")
let sourceArray: [Int] = [49,38,65,97,76,13,27]

var testArray: [Int] = sourceArray

print("需要排序的数组:")
printArray(sourceArray)

//三循环快速排序
qs_threeCirculate(source: &testArray, head: testArray.startIndex, end: testArray.endIndex-1)
print("三循环快速排序后的数组:")
printArray(testArray)

testArray = sourceArray
qs_whileCirculate(source: &testArray, head: testArray.startIndex, end: testArray.endIndex-1)
print("while循环快速排序后的数组:")
printArray(testArray)

testArray = sourceArray
qs_forCirculate(source: &testArray, head: testArray.startIndex, end: testArray.endIndex-1)
print("for循环快速排序后的数组:")
printArray(testArray)

testArray = sourceArray
ms_recursive(source: &testArray, araryCount: testArray.count)
print("归并排序后的数组:")
printArray(testArray)

