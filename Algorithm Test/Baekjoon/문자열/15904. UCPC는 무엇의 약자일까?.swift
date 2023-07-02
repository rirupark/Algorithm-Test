//
//  15904. UCPC는 무엇의 약자일까?.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/07/02.
//
// 문자열, 그리디 알고리즘

func B15904() {
    let s = readLine()!
    var flag = 0
    for char in s {
        if char == "U" && flag == 0 { flag = 1 }
        else if char == "C" && flag == 1 { flag = 2 }
        else if char == "P" && flag == 2 { flag = 3 }
        else if char == "C" && flag == 3 { flag = 4 }
    }
    print(flag == 4 ? "I love UCPC" : "I hate UCPC")
}
