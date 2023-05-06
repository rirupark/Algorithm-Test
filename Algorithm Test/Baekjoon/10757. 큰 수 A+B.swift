//
//  10757. 큰 수 A+B.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/06.
//

func B10757() {
    let ab = readLine()!.split(separator: " ").map{$0}
    var arrA = ab[0].reversed().map{Int(String($0))!}
    var arrB = ab[1].reversed().map{Int(String($0))!}
    var result = [Int]()
    let difference = abs(arrA.count - arrB.count)

    if arrA.count > arrB.count {
        for _ in 0..<difference { arrB.append(0) }
    } else {
        for _ in 0..<difference { arrA.append(0) }
    }

    var remainder = 0

    for i in 0..<arrA.count {
        let sum = arrA[i] + arrB[i] + remainder
        remainder = sum / 10
        if i == arrA.count - 1 { result.append(sum) }
        else { result.append(sum % 10) }
    }
    print(result.reversed().map{String($0)}.joined())
}
