//
//  QuickSort.swift
//  AlgorithmAccumulation
//  快速排序算法
//  Created by lzn on 16/2/24.
//  Copyright © 2016年 Study. All rights reserved.
//

import Foundation
/*
  1.设置基准数,一般设数组第0个元素
  2.重新排序数列.比较规则:所有元素比基准小的放在左边,所有元素比基准大的放在右边
               排序后,基准数出在中间位置
  3.递归左边小数列和右边大数列
*/
/**
三循环快速排列算法
1.从小到大排列
2.传入的数组结果直接更改到传入的数组中
- parameter sArray: 源数组
- parameter head:   头号索引
- parameter end:    尾部索引

*/
func qs_threeCirculate(inout source sArray:[Int], head: Int, end: Int) -> Void {
    //如果头部数据大于等于尾部数据,说明没有需要排序的数据,直接返回结束递归
    if (head >= end) {
        return
    }
    //数组左边循环索引值
    var i: Int = head
    //数组右边循环索引值
    var j: Int = end
    //数组最左边元素为基准数据
    let tmp: Int = sArray[i]

    //i>=j 退出循环
    while (i < j) {
        //数组右边循环比较基准数,直到遇到小的数据
        while((sArray[j] >= tmp) && (i < j)) {
            j--
        }
        //把小数据放在左边位置上
        sArray[i] = sArray[j]
        //然后数组左边循环比较基准数,直到遇到大的数据
        while((sArray[i] <= tmp)&&(i < j)) {
            i++
        }
        //然后把大的数据放在右边位置上,原 j 停留的位置上
        sArray[j] = sArray[i]
        //最后把基准数据放在 i 停留的位置上
        sArray[i] = tmp;
        //左边小数据递归
        qs_threeCirculate(source: &sArray, head: head, end: i-1)
        //右边大数据递归
        qs_threeCirculate(source: &sArray, head: j+1, end: end)
    }
}

func qs_whileCirculate(inout source sArray:[Int], head: Int, end: Int) -> Void {
    if (head >= end) {
        return
    }
    var left = head
    var right = end
    let tmpData = sArray[left]
    while (left < right) {
        if (sArray[left+1] < tmpData) {
            sArray[left] = sArray[left+1]
            left++
        }else {
            //交换数据
            if (left+1 != right) {
                //swap函数不支持同地址互换(必须是两个不同地址的数据)
                swap(&sArray[left+1], &sArray[right])
            }
            right--
        }
    }
    sArray[left] = tmpData
    qs_whileCirculate(source: &sArray, head: head, end: left-1)
    qs_whileCirculate(source: &sArray, head: left+1, end: end)
}

func qs_forCirculate(inout source sArray:[Int], head: Int, end: Int) -> Void {
    if (head >= end) {
        return
    }
    var index = head
    let tmpData = sArray[index]
    for (var i = head+1; i <= end; i++) {
        if (sArray[i] < tmpData) {
            index++
            if (index != i) {
                //swap函数不支持同地址互换(必须是两个不同地址的数据)
                swap(&sArray[index], &sArray[i])
            }
        }
    }
    swap(&sArray[index], &sArray[head])

    qs_forCirculate(source: &sArray, head: head, end: index-1)
    qs_forCirculate(source: &sArray, head: index+1, end: end)
    
}

