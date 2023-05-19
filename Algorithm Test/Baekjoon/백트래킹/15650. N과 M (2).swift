//
//  15650. N과 M (2).swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/19.
//
// 백트래킹

func B15650() {
    let nm = readLine()!.split(separator: " ").map{Int($0)!}
    var result = [Int]()
    dfsRecursive2()

    func dfsRecursive2() {
        if result.count == nm[1] {
            print(result.map{String($0)}.joined(separator: " "))
        }
        for num in 1...nm[0] {
            if !result.contains(num) && result.filter({$0 < num}).count == result.count {
                result.append(num)
                dfsRecursive2()
                result.removeLast()
            }
        }
    }
}

// 매개변수로 일반화하여 사용할 수 있는 풀이
func B15650Ver2() {
    let nm = readLine()!.split(separator: " ").map{Int($0)!}
    let (n, r) = (nm[0], nm[1])
    let arr = Array(1...n)
    var result = [Int]()

    dfsRecursive2(arr, n, r, 0, &result)
    
    func dfsRecursive2(_ numbers: [Int], _ n: Int, _ r: Int, _ depth: Int,_ result: inout [Int]) {
        if result.count == r {
            print(result.map{String($0)}.joined(separator: " "))
            return
        }
        for i in depth..<n {
            result.append(numbers[i])
            dfsRecursive2(numbers, n, r, i + 1, &result)
            result.removeLast()
        }
    }
}
