//
//  Lv3. 기지국 설치.swift
//  Algorithm Test
//
//  Created by 박민주 on 11/18/23.
//

import Foundation

func solution기지국설치(_ n:Int, _ stations:[Int], _ w:Int) -> Int{
    var answer = 0, start = 1

    for station in stations {
        answer += Int(ceil(Double(station - w - start) / Double(2 * w + 1)))
        start = station + w + 1
    }
    if start <= n {
        answer += Int(ceil(Double(n - start + 1) / Double(2 * w + 1)))
    }

    return answer
}
