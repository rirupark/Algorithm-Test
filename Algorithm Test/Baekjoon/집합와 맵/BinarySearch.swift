//
//  BinarySearch.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/11.
//
// 이진 탐색
// O(logN)

// MARK: Recursive
// 스택 메모리 사용 -> Stack overflow 발생할 수 있음.
// 재귀의 깊이가 깊어졌을 때, stack overflow가 발생하면서 프로그램이 비정상적으로 종료될 수 있다.
// * Stack overflow : 함수 반복 호출 횟수가 많아져 스택 메모리 초과할 때 발생
// 또한 함수가 호출되고 종료될 때 스택 프레임을 구성하고 해제하는 과정에서 반복문보다 오버헤드가 들기 때문에 속도도 훨씬 느려짐.
func binarySearchRecursive(_ array: [Int], num: Int) -> Bool {
    if array.count == 1 {
        return array[0] == num ? true : false
    }
    let mid = array.count / 2
    if array[mid] == num { return true }
    let range = array[mid] > num ? (0..<mid) : ((mid + 1)..<array.count)
    
    return binarySearchRecursive(Array(array[range]), num: num)
}

// MARK: Iteration
// 힙 메모리 사용
func binarySearchIteration(_ array: [Int], num: Int) -> Bool {
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

// 정렬된 리스트에서 찾는 값 이상의 값이 처음 나오는 위치 찾기
func lowerBound(_ arr: [Int], _ num: Int) -> Int {
    var start = 0
    var end = arr.count
    while start < end {
        let mid = (start + end)/2
        if arr[mid] < num { start = mid + 1 }
        else { end = mid }
    }
    return start
}

// 정렬된 리스트에서 찾는 값을 초과하는 값이 처음 나오는 위치 찾기
func upperBound(_ arr: [Int], _ num: Int) -> Int {
    var start = 0
    var end = arr.count
    while start < end {
        let mid = (start + end)/2
        if arr[mid] <= num { start = mid + 1 }
        else { start = mid }
    }
    return start
}
