//
//  10101. 삼각형 외우기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/08.
//

func B10101() {
    var angleArr = [Int]()
    for _ in 0..<3 {
        let angle = Int(readLine()!)!
        angleArr.append(angle)
    }
    if angleArr.filter({$0 == 60}).count == 3 {
        print("Equilateral")
    } else if angleArr.reduce(0, +) == 180 && Set(angleArr).count == 2 {
        print("Isosceles")
    } else if angleArr.reduce(0, +) == 180 && Set(angleArr).count == 3 {
        print("Scalene")
    } else { print("Error") }
}
