//  Algorithm Test
//  Created by 박민주 on 2022/06/21

import Foundation


// 풀이 방법 1
func countOf(array: [Int], value: Int) -> Int {
    return array.filter{ $0 == value }.count
}

func solution(array: [Int]) -> [Int] {
    var answer = [Int]()
    var set = Set<Int>()
    array.forEach { element in
        guard !set.contains(element) else { return }
        set.insert(element)
        let count = countOf(array: array, value: element)
        if count > 1 {
            answer.append(count)
        }
    }
    if answer.count == 0 {
        answer.append(-1)
    }
    return answer
}


// 풀이 방법 1과 비슷하지만 guard를 쓰지 않은 코드
func solution(array: [Int]) -> [Int] {
    var answer = [Int]()
    var set = Set<Int>()
    array.forEach { element in
        if !set.contains(element) {
            set.insert(element)
            let count = array.filter{ $0 == element }.count
            if count > 1 {
            answer.append(count)
            }
        }
    }
    if answer.count == 0 {
        answer.append(-1)
    }
    return answer
}


// 풀이 방법 2
func solution2(array: [Int]) -> [Int] {
    var find = [Int]()
    var map = Dictionary<Int, Int>()
    array.forEach { element in
        if let value = map[element] { //---가
            map[element] = value + 1
        }
        else { //---나
            map[element] = 1
            find.append(element)
        }
    }
    
    var answer : [Int] = find.compactMap { element in
        let count = map[element] ?? 0
        return count > 1 ? count : nil
    }
    if answer.count == 0 {
        answer.append(-1)
    }
    return answer
}


let arr: [Int] = [3, 2, 1, 3, 2, 5, 4, 5, 3]
print("풀이방법1 : \(solution(array: arr))")
print("풀이방법2 : \(solution2(array: arr))")
