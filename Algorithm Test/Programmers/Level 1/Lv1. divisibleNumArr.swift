//
//  Lv1. divisibleNumArr.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/07.
//

// version 1 : 반복문 사용
func solutionDivisibleArr1(_ arr:[Int], _ divisor:Int) -> [Int] {
    var result = [Int]()
    for num in arr {
        if num % divisor == 0 { result.append(num) }
    }
    return result.count == 0 ? [-1] : result.sorted()
}

// version 2 : 고차함수 사용
func solutionDivisibleArr2(_ arr:[Int], _ divisor:Int) -> [Int] {
    let result = arr.filter{ $0 % divisor == 0 }
    return result.count == 0 ? [-1] : result.sorted()
}
