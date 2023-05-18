//
//  25501. 재귀의 귀재.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/18.
//
// 구현, 문자열, 재귀

func B25501() {
    let t = Int(readLine()!)!
    var count = 0
    for _ in 0..<t {
        count = 0
        print(isPalindrome(readLine()!.map{$0}), count)
    }
    func recursion(_ s: [Character], _ l: Int, _ r: Int) -> Int {
        count += 1
        if l >= r { return 1 }
        else if s[l] != s[r] { return 0 }
        else { return recursion(s, l + 1, r - 1) }
    }
    func isPalindrome(_ s: [Character]) -> Int {
        return recursion(s, 0, s.count - 1)
    }
}
