//
//  Lv1. removeMin.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/13.
//

func solutionRemoveMin(_ arr:[Int]) -> [Int] {
    var arr = arr
    arr.remove(at: arr.firstIndex(of: arr.min()!)!)
    return arr.count == 0 ? [-1] : arr
}
