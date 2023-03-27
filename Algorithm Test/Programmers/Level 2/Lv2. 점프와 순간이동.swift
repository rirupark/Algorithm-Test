//
//  Lv2. 점프와 순간이동.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/03/27.
//

import Foundation

func solution(_ n:Int) -> Int
{
    var ans: Int = 0
    var n = n
    
    while n > 0 {
        ans += n % 2
        n = n % 2 == 0 ? n / 2 : n - 1 // n /= 2
    }
    
    return ans
}

// MARK: Version 2
//while n > 0 {
//    // 짝수일 때
//    if n % 2 == 0 { n /= 2 }
//    // 홀수일 때
//    else { ans += 1; n -= 1 }
//}
