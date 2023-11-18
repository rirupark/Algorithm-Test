//
//  Lv3. 가장 긴 팰린드롬.swift
//  Algorithm Test
//
//  Created by 박민주 on 11/18/23.
//

import Foundation

func solution가장긴팰린드롬(_ s:String) -> Int {
    let sArr = Array(s)
    for length in (1...s.count).reversed() {
        for left in 0...s.count - length {
            let end = left + length - 1
            var isPalindrome = true
            for i in 0..<length / 2 {
                if sArr[left + i] != sArr[end - i] { isPalindrome = false; break }
            }
            if isPalindrome { return length }
        }
    }
    return 1
}
