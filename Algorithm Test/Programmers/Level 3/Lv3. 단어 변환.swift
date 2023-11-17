//
//  Lv3. 단어 변환.swift
//  Algorithm Test
//
//  Created by 박민주 on 11/17/23.
//

import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    var visited = [Bool](repeating: false, count: words.count)
    var answer = Int.max

    func dfs(_ begin: String, _ count: Int) {
        var difference = 0
        if begin == target { answer = min(answer, count); return }

        for i in 0..<words.count {
            if visited[i] { continue }
            difference = getDifference(begin, words[i])
            if difference == 1 {
                visited[i] = words[i] == target ? false : true
                dfs(words[i], count + 1)
            }
        }
    }
    dfs(begin, 0)
    return answer == Int.max ? 0 : answer
}

func getDifference(_ a: String, _ b: String) -> Int {
    var result = 0
    let aArr = Array(a), bArr = Array(b)
    for i in 0..<a.count {
        if aArr[i] != bArr[i] { result += 1 }
    }
    return result
}
