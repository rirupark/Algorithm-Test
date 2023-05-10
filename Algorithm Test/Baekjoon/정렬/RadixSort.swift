//
//  RadixSort.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/10.
//
// O(N)
// 각 자리수에 해당하는 버킷을 준비하고,
// 1의 자리부터 제일 큰 수의 자리수까지 넣다 뺏다를 반복하여 정렬
// 속도는 빠르지만 버킷 생성을 인한 많은 공간 필요

func radixSort(_ array: inout [Int]) -> [Int] {
    let radix = 10  // 0 ~ 9 까지의 10개의 자릿수 ([Int]형의 배열일 경우)
    var done = false
    var index: Int
    var digit = 1
    
    while !done {
        done = true
        var buckets: [[Int]] = [] // 10개의 버킷을 2중 배열로 선언
        for _ in 1...radix { buckets.append([]) }
        for number in array {
            index = number / digit // 해당 요소의 자릿수의 숫자를 추출
            buckets[index % radix].append(number) // 해당 자릿수 버킷에 데이터 추가
            if done && index > 0 { done = false }
        }
        var i = 0
        for j in 0..<radix {
            let bucket = buckets[j]
            for number in bucket {
                array[i] = number
                i += 1
            }
        }
        digit *= radix  // 다음 자릿수 비교
    }

    return array
}
