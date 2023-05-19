//
//  15651. N과 M (3).swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/19.
//
// 백트래킹

// 100600KB, 876ms
func B15651() {
    let nm = readLine()!.split(separator: " ").map{Int($0)!}
    var result = [Int]()
    var answer = ""
    dfsRecursive3()
    print(answer)

    func dfsRecursive3() {
        if result.count == nm[1] {
            answer += (result.map{String($0)}.joined(separator: " ") + "\n")
            return
        }
        for num in 1...nm[0] {
            result.append(num)
            dfsRecursive3()
            result.removeLast()
        }
    }

}

// 100600KB, 400ms
func B15651Ver2() {
    let nm = readLine()!.split(separator: " ").map {Int($0)!}
    var result = [String](repeating: "", count: nm[1])
    var answer = ""
    dfsRecursive3(0)
    print(answer)

    func dfsRecursive3(_ depth: Int) {
        if depth == nm[1] {
            answer += result.joined(separator: " ") + "\n"
            return
        }
        for num in 1...nm[0] {
            result[depth] = "\(num)"
            dfsRecursive3(depth + 1)
        }
    }
}
