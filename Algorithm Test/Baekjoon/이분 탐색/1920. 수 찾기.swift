//
//  1920. 수 찾기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/13.
//
// 자료 구조, 정렬, 이분 탐색

// 80100KB, 212ms
func B1920() {
    let n = Int(readLine()!)!
    let nNums = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
    let m = Int(readLine()!)!
    let mNums = readLine()!.split(separator: " ").map{Int($0)!}

    func binarySearch(_ arr: [Int], _ searchNum: Int) -> Int {
        var start = 0, end = arr.count - 1
        while start <= end {
            let mid = (start + end) / 2
            if searchNum == nNums[mid] { return 1 }
            else if searchNum > nNums[mid] { start = mid + 1 }
            else if searchNum < nNums[mid] { end = mid - 1 }
        }
        return 0
    }
    mNums.forEach { print(binarySearch(nNums, $0)) }
}

// 81396KB, 204ms
func B1920_Ver2() {
    let n = Int(readLine()!)!
    let nNums = Set(readLine()!.split(separator: " ").map{Int($0)!})
    let m = Int(readLine()!)!
    let mNums = readLine()!.split(separator: " ").map{Int($0)!}
    for m in mNums { print(nNums.contains(m) ? 1 : 0) }
}
