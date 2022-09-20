//
//  Lv2. CompressionOfStrings.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/06/25.
//

import Foundation
 
func dupLen(_ dupCnt: Int) -> Int {
    if dupCnt >= 100 { return 3 }
    else if dupCnt >= 10 { return 2 }
    return 1
}

func solution(_ s:String) -> Int {
    let arr = Array(s)
    let mxLen = arr.count
    var ans = mxLen
    
    if mxLen <= 2 { return ans }
    
    for len in 1...mxLen/2 {
        var tmp = [String]()
        var cnt = 0 //현재 문자열의 길이
        var dup = 1 //중복 횟수
        var addLen = 0 //중복 횟수 문자열 길이
        var str = "" //len길이만큼 잘라낸 문자열
        
        for char in arr {
            str += String(char)
            cnt += 1
      
            if cnt == len {
                if !tmp.isEmpty && tmp.last! == str { dup += 1 }
                else {
                    if dup > 1 {
                        addLen += dupLen(dup)
                        dup = 1
                    }
                    tmp.append(str)
                }
                cnt = 0
                str = ""
            }
        }
        let nowLen = tmp.count * len + cnt + addLen + (dup > 1 ? dupLen(dup) : 0)
        ans = ans > nowLen ? nowLen : ans
    }
    
    return ans
}
