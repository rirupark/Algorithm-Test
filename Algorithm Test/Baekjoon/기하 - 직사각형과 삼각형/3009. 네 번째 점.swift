//
//  3009. 네 번째 점.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/08.
//

func B3009() {
    var x = [Int](), y = [Int]()
    for _ in 0..<3 {
        let input = readLine()!.split(separator: " ").map{Int($0)!}
        if x.contains(input[0]) { x.remove(at: x.firstIndex(of: input[0])!) }
        else { x.append(input[0]) }
        if y.contains(input[1]) { y.remove(at: y.firstIndex(of: input[1])!) }
        else { y.append(input[1]) }
    }
    print(x[0], y[0])
}
