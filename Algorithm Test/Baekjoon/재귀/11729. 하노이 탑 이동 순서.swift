//
//  11729. 하노이 탑 이동 순서.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/18.
//
// 재귀

// (n - 1)개의 원판을 a에서 b, b에서 c로 옮긴다.
func B11729() {
    let n = Int(readLine()!)!
    var answer = "", count = 0
    hanoi(n, 1, 2, 3)
    print("\(count)\n\(answer)")

    func hanoi(_ n: Int, _ a: Int, _ b: Int, _ c: Int) {
        if n == 1 { answer += "\(a) \(c)\n"; count += 1 }
        else {
            hanoi(n - 1, a, c, b) // a -> b
            answer += "\(a) \(c)\n"; count += 1
            hanoi(n - 1, b, a, c) // b -> c
        }
    }
}
