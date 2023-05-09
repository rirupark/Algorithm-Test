//
//  2501. 약수 구하기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/08.
//

func B2501() {
    let nk = readLine()!.split(separator: " ").map{Int($0)!}
    var array = [Int]()
    for num in 1...nk[0] {
        if nk[0] % num == 0 { array.append(num) }
    }
    print(array.count < nk[1] ? 0 : array[nk[1]-1])
}
