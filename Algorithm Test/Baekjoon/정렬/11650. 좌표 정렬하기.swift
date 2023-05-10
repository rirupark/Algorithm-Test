//
//  11650. 좌표 정렬하기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/10.
//

func B11650() {
    let n = Int(readLine()!)!
    var array = [(Int, Int)]()
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map{Int($0)!}
        array.append((input[0], input[1]))
    }
    array.sort(by: { $0.0 == $1.0 ? $0.1 < $1.1 : $0.0 < $1.0 })
    for nums in array { print(nums.0, nums.1) }
}

//MARK: if - return 사용
//let n = Int(readLine()!)!
//var array = [(Int, Int)]()
//for _ in 0..<n {
//    let input = readLine()!.split(separator: " ").map{Int($0)!}
//    array.append((input[0], input[1]))
//}
//array.sort(by: {
//    if $0.0 == $1.0 { return $0.1 < $1.1 }
//    return $0.0 < $1.0
//})
//for nums in array { print(nums.0, nums.1) }
