//
//  Lv1. MinRectangle.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/06.
//

import Foundation

func solutionMinRectangle(_ sizes:[[Int]]) -> Int {

    //가로 세로 길이를 바꾸는 경우를 배제하기 위해서 명함 배열 정렬
    var arr = Array.init(repeating: [Int(0), Int(0)], count: sizes.count)
    for i in 0..<sizes.count { arr[i] = sizes[i].sorted() }

    // 최적의 크기 구하기
    var max1 = 0
    var max2 = 0
    for i in 0..<arr.count {
        if arr[i][0] > max1 { max1 = arr[i][0] }
        if arr[i][1] > max2 { max2 = arr[i][1] }
    }

    return max1 * max2
}
