//
//  1316. 그룹 단어 체커.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/04.
//

func B1316() {
    let n = Int(readLine()!)!
    var count = n
    for _ in 0..<n {
        let str = readLine()!
        var array = [Character]()
        for char in str {
            if array.contains(char) && array.last! != char {
                count -= 1; break
            } else { array.append(char) }
        }
    }
    print(count)
}
