//
//  1021. 회전하는 큐.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/16.
//

func B1021() {
    let nm = readLine()!.split(separator: " ").map{Int($0)!}
    var nums = readLine()!.split(separator: " ").map{Int($0)!}
    var array = Array(1...nm[0])
    var count = 0
    while !nums.isEmpty {
        if nums[0] == array[0] { // 1번 연산
            array.removeFirst()
            nums.removeFirst()
        } else {
            let start = array.firstIndex(of: nums[0])!
            let end = array.count - 1 - array.firstIndex(of: nums[0])!
            if start <= end { // 2번 연산
                array.append(array.removeFirst())
            } else { // 3번 연산
                array.insert(array.removeLast(), at: 0)
            }
            count += 1
        }
    }
    print(count)
}
