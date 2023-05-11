//
//  10816. 숫자 카드 2.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/11.
//
// 자료 구조, 정렬, 이분 탐색, 해시를 사용한 집합과 맵

// MARK: 해시 사용
// 126912KB, 648ms
func B10816() {
    let n = Int(readLine()!)!
    let nNums = readLine()!.split(separator: " ").map{Int($0)!}
    let m = Int(readLine()!)!
    let mNums = readLine()!.split(separator: " ").map{Int($0)!}
    var result = [Int]()
    var dic = [Int:Int]()
    for num in nNums {
        dic.updateValue((dic[num] ?? 0) + 1, forKey: num)
    }
    for num in mNums {
        result.append(dic[num] ?? 0)
    }
    print(result.map{String($0)}.joined(separator: " "))
}

// MARK: 이진 탐색 이용
// 116104KB, 744ms
// lowerBound함수와 upperBound함수에서 배열을 numbers로 바로 사용함.
// 배열을 파라미터로 쓰면 시간 초과...
func B10816_2() {
    let n = Int(readLine()!)!
    // * compactMap : 1차원 배열에서 nil을 제거하여 옵셔널 바인딩을 해줌.
    var numbers = readLine()!.split(separator: " ").compactMap {Int($0)}
    let m = Int(readLine()!)!
    let targetNumbers = readLine()!.split(separator: " ").compactMap {Int($0)}
    var answers: [Int] = []

    func lowerBound(_ target: Int) -> Int {
      var left: Int = 0
      var right: Int = numbers.count
      while left < right {
        let mid = (left + right) / 2
        if target <= numbers[mid] { right = mid }
        else { left = mid + 1 }
      }
      return left
    }

    func upperBound(_ target: Int) -> Int {
      var left: Int = 0
      var right: Int = numbers.count
      while left < right {
        let mid = (left + right) / 2
        if target >= numbers[mid] { left = mid + 1 }
        else { right = mid }
      }
      return left
    }
    
    numbers.sort()
    for number in targetNumbers {
        answers.append(upperBound(number) - lowerBound(number))
    }
    print(answers.map { String($0) }.joined(separator: " "))
}
