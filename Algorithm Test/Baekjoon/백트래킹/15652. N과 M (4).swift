//
//  15652. N과 M (4).swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/19.
//

// 69104KB, 32ms
func B15652() {
    let nm = readLine()!.split(separator: " ").map{Int($0)!}
    var result = [Int]()
    dfsRecursive4()

    func dfsRecursive4() {
        if result.count == nm[1] {
            print(result.map{String($0)}.joined(separator: " "))
            return
        }
        for num in 1...nm[0] {
            if result.filter({$0 <= num}).count == result.count {
                result.append(num)
                dfsRecursive4()
                result.removeLast()
            }
        }
    }
}

// 69108KB, 24ms
func B15652Ver2() {
    let nm = readLine()!.split(separator: " ").map{Int($0)!}
    let (n, r) = (nm[0], nm[1])
    let arr = Array(1...n)
    var result = [Int]()
    dfsRecursive4(arr, n, r, 0, &result)

    func dfsRecursive4(_ numbers: [Int], _ n: Int, _ r: Int, _ depth: Int,_ result: inout [Int]) {
        if result.count == r {
            print(result.map{String($0)}.joined(separator: " "))
            return
        }
        for i in depth..<n {
            result.append(numbers[i])
            dfsRecursive4(numbers, n, r, i, &result)
            result.removeLast()
        }
    }
}
