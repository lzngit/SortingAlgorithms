//
//  MergeSort.swift
//  SortingAlgorithms
//  归并排序算法
//  Created by lzn on 16/3/20.
//  Copyright © 2016年 go. All rights reserved.
//

import Foundation

func ms_merge(inout source sArray:[Int], inout tmpArray:[Int], left: Int, middle: Int, right: Int) -> Void {
    var p_left = left
    var p_right = middle
    var i: Int = left
    while (p_left < middle || p_right < right) {
        if (p_left >= middle) {
            tmpArray[i] = sArray[p_right]
            p_right++
        }else if (p_right >= right) {
            tmpArray[i] = sArray[p_left]
            p_left++
        }else if (sArray[p_left] > sArray[p_right]) {
            tmpArray[i] = sArray[p_right]
            p_right++
        }else {
            tmpArray[i] = sArray[p_left]
            p_left++
        }
        i++
    }
    for (var i: Int = left; i < right; i++) {
        sArray[i] = tmpArray[i]
    }
}

func ms_recursive(inout source sArray:[Int], inout tmpArray:[Int], left: Int, right: Int) -> Void {
    if (right - left <= 1) {
        return;
    }
    let middle = (left + right) / 2;
    ms_recursive(source: &sArray, tmpArray: &tmpArray, left: left, right: middle)
    ms_recursive(source: &sArray, tmpArray: &tmpArray, left: middle, right: right)
    ms_merge(source: &sArray, tmpArray: &tmpArray, left: left, middle: middle, right: right)

}


func ms_recursive(inout source sArray:[Int], araryCount: Int) -> Void {
    var tmpArray: [Int] = Array(count: araryCount, repeatedValue: 0)
    ms_recursive(source: &sArray, tmpArray: &tmpArray, left: 0, right: araryCount)
}