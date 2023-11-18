//
//  9251. LCS.swift
//  Algorithm Test
//
//  Created by 박민주 on 11/19/23.
//

func B9251() {
    let str1 = readLine()!.map{$0}, str2 = readLine()!.map{$0}
    var cache = [[Int]](repeating: [Int](repeating: 0, count: str2.count + 1), count: str1.count + 1)
    for i in 1...str1.count {
        for j in 1...str2.count {
            if str1[i - 1] == str2[j - 1] { cache[i][j] = cache[i - 1][j - 1] + 1 }
            else { cache[i][j] = max(cache[i - 1][j], cache[i][j - 1]) }
        }
    }
    print(cache[str1.count][str2.count])
}
