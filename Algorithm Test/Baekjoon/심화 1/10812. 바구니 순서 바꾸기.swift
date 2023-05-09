//
//  10812. 바구니 순서 바꾸기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/03.
//

func B10812() {
    let nm = readLine()!.split(separator: " ").map{Int($0)!}
    var bucket = [Int]()
    for num in 1...nm[0] { bucket.append(num) }
    for _ in 0..<nm[1] {
        let input = readLine()!.split(separator: " ").map{Int($0)!}
        let i = input[0] - 1, j = input[1] - 1, k = input[2] - 1
        for _ in i..<k {
            bucket.insert(bucket[i...k].removeFirst(), at: j)
        }
    }
    print(bucket.map{String($0)}.joined(separator: " "))
}
