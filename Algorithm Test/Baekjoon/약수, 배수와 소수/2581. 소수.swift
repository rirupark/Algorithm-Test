//
//  2581. 소수.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/08.
//

func B2581() {
    let m = Int(readLine()!)!
    let n = Int(readLine()!)!
    var sum = 0
    var array = [Int]()
    for num in m...n {
        let tempArr = (1...num).filter{ num % $0 == 0 }
        if tempArr.count == 2 { sum += num; array.append(num) }
    }
    if array.isEmpty { print(-1) }
    else { print(sum); print(array[0]) }
}
