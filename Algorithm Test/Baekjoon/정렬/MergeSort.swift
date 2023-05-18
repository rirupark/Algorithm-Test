//
//  MergeSort.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/10.
//
// MARK: Merge Sort : 분할 - 정복 - 결합
// 분할 : 주어진 배열을 둘로 나눔
// 정복 : 나눠진 배열 정렬
// 결합 : 정렬된 배열 합침
// O(NlogN)

func mergeSortVer1(_ array: [Int]) -> [Int] {
    if array.count <= 1 { return array }
    let center = array.count / 2
    let left = Array(array[0..<center])
    let right = Array(array[center..<array.count])
    
    func mergeVer1(_ left: [Int],_ right: [Int]) -> [Int] {
        var left = left, right = right
        var result = [Int]()
        
        while !left.isEmpty && !right.isEmpty {
            if left[0] < right[0] {
                result.append(left.removeFirst())
            } else {
                result.append(right.removeFirst())
            }
        }
        if !left.isEmpty { result.append(contentsOf: left) }
        if !right.isEmpty { result.append(contentsOf: right) }

        return result
    }
    return mergeVer1(mergeSortVer1(left), mergeSortVer1(right))
}


func mergeSortVer2(_ arr: [Int], _ p: Int, _ r: Int) {
    if arr.count <= 1 { return }
    if p < r {
        let q = (p + r) / 2 // q는 p, r의 중간 지점
        mergeSortVer2(arr, p, q) // 전반부 정렬
        mergeSortVer2(arr, q + 1, r) // 후반부 정렬
        mergeVer2(arr, p, q, r) // 병합
    }
}

// arr[p...q]와 arr[q+1...r]을 병합하여 arr[p...r]을 오름차순 정렬된 상태로 만듦.
// arr[p...q]와 arr[q+1...r]은 이미 오름차순으로 정렬되어 있음.
func mergeVer2(_ arr: [Int], _ p: Int, _ q: Int, _ r: Int) {
    var i = p, j = q + 1, t = 0
    var tmp = [Int]()
    var arr = arr
    
    while i <= q && j <= r {
        if arr[i] <= arr[j] {
            tmp.append(arr[i])
            i += 1
        } else {
            tmp.append(arr[j])
            j += 1
        }
    }
    while i <= q { // 왼쪽 배열 부분이 남은 경우
        tmp.append(arr[i])
        i += 1
    }
    while j <= r { // 오른쪽 배열 부분이 남은 경우
        tmp.append(arr[j])
        j += 1
    }
    i = p
    while i <= r {
        arr[i] = tmp[t]
        i += 1
        t += 1
    }
}
