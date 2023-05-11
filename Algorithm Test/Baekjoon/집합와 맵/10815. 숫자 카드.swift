//
//  10815. 숫자 카드.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/11.
//
// 이분탐색(이진탐색), 자료구조, 정렬

func B10815() {
    let n = Int(readLine()!)!
    let nNums = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
    let m = Int(readLine()!)!
    let mNums = readLine()!.split(separator: " ").map{Int($0)!}
    var result = Array(repeating: 0, count: m)

    func binarySearch(_ array: [Int], num: Int) -> Bool {
        var start = 0
        var end = (array.count - 1)
        while start <= end {
            let mid = (start + end) / 2
            if array[mid] == num { return true }
            if array[mid] > num { end = mid - 1 }
            else { start = mid + 1 }
        }
        return false
    }
    
    for i in 0..<m {
        if binarySearch(nNums, num: mNums[i]) { result[i] = 1 }
    }
    print(result.map{String($0)}.joined(separator: " "))
}


//다른 사람 풀이 - 이진탐색 안 씀 !
//readLine()
//let array = readLine()!.split(separator: " ").map{Int(String($0))!}
//var dic = [Int: Int]()
//array.forEach{dic[$0, default: 0] = 0}
//readLine()
//print(readLine()!.split(separator: " ").map{dic[Int(String($0))!] != nil ? "1" : "0"}.joined(separator: " "))
