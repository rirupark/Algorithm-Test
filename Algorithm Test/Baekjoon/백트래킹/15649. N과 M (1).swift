//
//  15649. N과 M (1).swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/19.
//
// 백트래킹

func B15649() {
    let nm = readLine()!.split(separator: " ").map{Int($0)!}
    var result = [Int]()
    dfsRecursive()

    func dfsRecursive() {
        if result.count == nm[1] { // result.count = depth
            print(result.map{String($0)}.joined(separator: " "))
        }
        for num in 1...nm[0] {
            if !result.contains(num) {
                result.append(num)
                dfsRecursive()
                result.removeLast()
            }
        }
    }
}
