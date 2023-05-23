//
//  17299. 오등큰수.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/23.
//
// 자료 구조, 스택

func B17299() {
    let n = Int(readLine()!)!
    let a = readLine()!.split(separator: " ").map{Int($0)!}
    var dic = [Int: Int]()
    var stack = [Int]()
    var answer = [Int](repeating: -1, count: n)
    for num in a { dic.updateValue((dic[num] ?? 1) + 1, forKey: num) }
    for i in 0..<n {
        while !stack.isEmpty && dic[a[stack.last!]]! < dic[a[i]]! {
            answer[stack.removeLast()] = a[i]
        }
        stack.append(i)
    }
    print(answer.map{String($0)}.joined(separator: " "))
}
