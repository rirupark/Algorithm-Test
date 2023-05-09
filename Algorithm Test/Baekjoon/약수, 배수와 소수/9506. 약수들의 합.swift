//
//  9506. 약수들의 합.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/08.
//

func B9506() {
    while true {
        let n = Int(readLine()!)!
        if n == -1 { break } // 종료 조건
        let array = (1..<n).filter{ n % $0 == 0 }
        let sum = array.reduce(0, +)
        print(sum == n ? "\(n) = \(array.map{String($0)}.joined(separator: " + "))" : "\(n) is NOT perfect.")
    }
}
