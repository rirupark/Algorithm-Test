//
//  1652. 누울 자리를 찾아라.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/28.
//
// 구현, 문자열

func B1652() {
    let n = Int(readLine()!)!
    var arr = [[Bool]](), x = 0, y = 0
    for _ in 0..<n {
        arr.append(readLine()!.map{$0 == "." ? true : false})
    }
    for i in 0..<n {
        let splitX = arr[i].split(separator: false).map{$0.count}
        let splitY = arr.map{$0[i]}.split(separator: false).map{$0.count}
        for i in splitX {
            if i >= 2 { x += 1 }
        }
        for i in splitY {
            if i >= 2 { y += 1 }
        }
    }
    print(x, y)
}
