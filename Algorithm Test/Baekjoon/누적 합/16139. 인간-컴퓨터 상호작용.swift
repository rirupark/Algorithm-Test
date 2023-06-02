//
//  16139. 인간-컴퓨터 상호작용.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/02.
//
// 누적 합

// MARK: 딕셔너리 (389288KB, 972ms)
func B16139() {
    let s = [""] + readLine()!.map{String($0)}, q = Int(readLine()!)!
    var dic = [[String: Int]](repeating: [:], count: s.count)
    for i in 1..<s.count {
        dic[i] = dic[i - 1] // prefix
        dic[i][s[i], default: 0] += 1
    }
    for _ in 0..<q {
        let input = readLine()!.split(separator: " ").map{$0}
        let a = String(input[0]), l = Int(input[1])!, r = Int(input[2])!
        print(Int(dic[r + 1][a] ?? 0) - Int(dic[l][a] ?? 0))
    }
}

// MARK: 아스키 코드 (123696KB, 812ms)
func B16139Ver2() {
    let s = readLine()!.map {$0}, q = Int(readLine()!)!
    var arr = Array(repeating: Array(repeating: 0, count: 26), count: s.count)
    arr[0][Int(s[0].asciiValue!) - 97] = 1
    for i in 1..<s.count {
        arr[i][Int(s[i].asciiValue!) - 97] = 1
        for j in 0 ..< 26 { arr[i][j] += arr[i-1][j] }
    }
    for _ in 0..<q {
        let input = readLine()!.split(separator: " ").map{$0}
        let s = Int(String(input[1]))!, e = Int(String(input[2]))!
        let idx = Int(Character(String(input[0])).asciiValue!) - 97
        if s <= 0 { print(arr[e][idx]) }
        else { print(arr[e][idx] - arr[s - 1][idx]) }
    }
}
