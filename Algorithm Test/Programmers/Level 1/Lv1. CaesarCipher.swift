//
//  Lv1. Caesar's PW.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/20.
//

func solutionCaesar(_ s:String, _ n:Int) -> String {
    var ans = ""
    for char in s {
        if char.isLetter {
            if 65 <= char.asciiValue! && char.asciiValue! <= 90 { ans += String(UnicodeScalar((char.asciiValue! + UInt8(n) - 65) % 26 + 65 )) }
            if 97 <= char.asciiValue! && char.asciiValue! <= 122 { ans += String(UnicodeScalar((char.asciiValue! + UInt8(n) - 97) % 26 + 97 )) }
        }
        else { ans += " " }
    }
    return ans
}
