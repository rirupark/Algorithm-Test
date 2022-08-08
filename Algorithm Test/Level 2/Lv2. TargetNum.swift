//
//  Lv2. TargetNum.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/08/07.
//

import Foundation

func solutionTargetNum(_ numbers:[Int], _ target:Int) -> Int {
    var count = 0

    func dfs(_ index: Int, _ sum: Int) {
        if index <= numbers.count {
            if index == numbers.count - 1 {
                if sum == target { count += 1 }
                return
            }

            dfs(index + 1, sum + numbers[index + 1])
            dfs(index + 1, sum - numbers[index + 1])
        }
    }
    dfs(-1, 0)
    return count
}

