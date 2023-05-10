//
//  18870. 좌표 압축.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/10.
//  🤔
// MARK: 좌표 압축
// 입력으로 주어지는 값의 범위에 비해 입력의 개수가 턱없이 작을 때 배열의 값에 새로운 인덱스를 부여하는 기술
// 모든 좌표를 다 가지고 있으면 범위가 커지기 때문에 중복되는 값을 줄이고 정렬해서
// 좌표 테이블을 가지고 ***테이블의 인덱스를 좌표 대신 가지고 있다가 제공*** 해주는 형태

func B18870() {
    let n = Int(readLine()!)!
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let inputSet = Array(Set(input)).sorted()
    var result = [Int:Int]()
    for i in 0..<inputSet.count {
        result.updateValue(i, forKey: inputSet[i])
    }
    // input의 각 값과 inputSet의 키가 같을 때 inputSet의 value 출력
    print(input.map{String(result[$0]!)}.joined(separator: " "))
}

//MARK: 시간 초과
//let n = Int(readLine()!)!
//let input = readLine()!.split(separator: " ").map{Int($0)!}
//var result = Array(repeating: 0, count: n)
//
//for i in 0..<input.count {
//    var temp = Set<Int>()
//    for j in 0..<input.count {
//        if input[i] > input[j] && !temp.contains(input[j]) {
//            result[i] += 1
//        }
//        temp.insert(input[j])
//    }
//}
//print(result)
