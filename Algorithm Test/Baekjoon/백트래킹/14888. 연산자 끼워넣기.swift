//
//  14888. 연산자 끼워넣기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/19.
//
// 브루트포스 알고리즘, 백트래킹

func B14888() {
    let n = Int(readLine()!)!
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    var op = readLine()!.split(separator: " ").map{Int($0)!}
    var maxValue = Int.min, minValue = Int.max

    func operate(_ idx: Int, _ result: Int) {
        if idx == n { // exit
            maxValue = max(result, maxValue)
            minValue = min(result, minValue)
            return
        }
        for i in 0..<4 {
            if op[i] < 1 { continue }
            op[i] -= 1
            switch i {
            case 0:
                operate(idx + 1, result + nums[idx])
            case 1:
                operate(idx + 1, result - nums[idx])
            case 2:
                operate(idx + 1, result * nums[idx])
            case 3:
                operate(idx + 1, result / nums[idx])
            default:
                break
            }
            op[i] += 1
        }
    }
    operate(1, nums[0])
    print("\(maxValue)\n\(minValue)")
}
