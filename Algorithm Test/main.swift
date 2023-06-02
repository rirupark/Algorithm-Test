//
//  Algorithm Test main 실행파일
//  Created by 박민주 on 2022/06/21


let nm = readLine()!.split(separator: " ").map{Int($0)!}
var nums = readLine()!.split(separator: " ").map{Int($0)!}
var dic = [Int: Int]()
for i in 1..<nm[0] { nums[i] += nums[i - 1] }
for num in nums { dic[num % nm[1], default: 0] += 1 }
var answer = dic[0] ?? 0
for (_, value) in dic {
    if value > 1 { answer += (value * (value - 1)) / 2 }
}
print(answer)
