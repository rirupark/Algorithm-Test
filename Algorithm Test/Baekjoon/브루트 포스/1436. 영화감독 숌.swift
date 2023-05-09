//
//  1436. 영화감독 숌.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/09.
//

func B1436() {
    let n = Int(readLine()!)!
    var num = 666
    var count = 0
    while n > count {
        var str = ""
        for char in String(num) {
            if char == "6" { str += "6" }
            else { str = "" }
            if str == "666" { count += 1 }
        }
        num += 1
    }
    print(num - 1)
}

// MARK: 시간 900ms 단축 (932 -> 32)
//var count = 0
//var num = 0
//
//while count < n {
//    num += 1
//    var temp = num
//    while temp >= 666 {
//        if temp % 1000 == 666 { count += 1; break }
//        temp /= 10
//    }
//}
//print(num)
