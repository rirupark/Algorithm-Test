//
//  11655. ROT13.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/09/07.
//

func B11655() {
    let s = readLine()!, alphabet = "abcdefghijklmnopqrstuvwxyz".map{$0}
    var result = ""
    for char in s {
        if char.isLetter {
            let index = alphabet.firstIndex(of: Character(char.lowercased()))! + 13
            if index < 26 {
                result += char.isLowercase ? String(alphabet[index]) : String(alphabet[index]).uppercased()
            } else {
                result += char.isLowercase ? String(alphabet[index - 26]) : String(alphabet[index - 26]).uppercased()
            }
        } else { result += String(char) }
    }
    print(result)
}
