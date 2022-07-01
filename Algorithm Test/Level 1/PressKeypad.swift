//
//  PressKeypad.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/06/27.
//

import Foundation

func findDistance(_ x1:Int, _ y1:Int, _ x2:Int, _ y2:Int) -> Double {
    return abs(Double(x2) - Double(x1)) + abs(Double(y2) - Double(y1))
}

func solution(_ numbers:[Int], _ hand:String) -> String {
    var numbers = numbers
    var result = ""
    var nowLeft = [10]
    var nowRight = [12]
    let num_btns = [[1, 4, 7, 10], [2, 5, 8, 11], [3, 6, 9, 12]]

    numbers.indices.filter{numbers[$0] == 0}.forEach{numbers[$0] = 11}
    
    for char in numbers {
        if num_btns[0].contains(char) { result += "L"; nowLeft.append(char) }
        else if num_btns[2].contains(char) { result += "R"; nowRight.append(char) }
        else {
            var leftX = 0; var rightX = 0; var leftY = 0; var rightY = 0
            
            // 현재 왼손과 오른손의 좌표값 구하기
            for i in 0..<num_btns.count {
                for j in 0..<num_btns[i].count {
                    if num_btns[i][j] == nowLeft.last! { leftX = i; leftY = j }
                    if num_btns[i][j] == nowRight.last! { rightX = i; rightY = j }
                }
            }
            let leftDis = findDistance(1, num_btns[1].firstIndex(of: char)!, leftX, leftY)
            let rightDis = findDistance(1, num_btns[1].firstIndex(of: char)!, rightX, rightY)

            // 거리 비교해서 무슨 손으로 누를지 선택
            if leftDis < rightDis { result += "L"; nowLeft.append(char) }
            else if leftDis > rightDis { result += "R"; nowRight.append(char) }
            else { // 거리가 동일할 때
                if hand == "left" { result += "L"; nowLeft.append(char) }
                else { result += "R"; nowRight.append(char) }
            }
        }
    }
    
    return result
}

