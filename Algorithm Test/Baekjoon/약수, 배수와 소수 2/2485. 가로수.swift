//
//  2485. 가로수.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/12.
//
// 수학, 정수론, 유클리드 호제법

func B2485() {
    let n = Int(readLine()!)!
    var array = [Int]()
    var arrN = [Int]()
    for _ in 0..<n { arrN.append(Int(readLine()!)!) }
    arrN.sort()
    var gcd = 1, answer = 0
    for i in 0..<n {
        if i + 1 < n { array.append(arrN[i+1] - arrN[i]) }
    }
    for i in 0..<n {
        if i + 1 < array.count {
            gcd = getGcd(array[i+1], gcd == 1 ? array[i] : gcd)
        }
    }
    array.forEach{ answer += ($0 / gcd - 1) }
    print(answer)

    func getGcd(_ a: Int, _ b: Int) -> Int {
        var a = a, b = b
        while b > 0 {
            let tmp = a
            a = b
            b = tmp % b
        }
        return a
    }
}

// 다른 풀이
// (arrN.last! - arrN.first!) / gcd - (n - 1)
