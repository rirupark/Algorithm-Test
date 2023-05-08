//
//  5073. 삼각형과 세 변.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/09.
//

func B5073() {
    while true {
        let angles = readLine()!.split(separator: " ").map{Int($0)!}
        let sortedAngles = angles.sorted(by: >)
        let a = sortedAngles[0], b = sortedAngles[1], c = sortedAngles[2]
        if Set(angles).count == 2 && a < b + c { print("Isosceles") }
        else if Set(angles).count == 3 && a < b + c { print("Scalene") }
        else if Set(angles).count > 1 && a >= b + c { print("Invalid") }
        else if Set(angles).count == 1 && a != 0 { print("Equilateral") }
        else { break }
    }
}
