//
//  Algorithm Test main 실행파일
//  Created by 박민주 on 2022/06/21


let n = Int(readLine()!)!
var dic = [String: Int]()
for _ in 0..<n {
    let book = readLine()!
    dic.updateValue((dic[book] ?? 0) + 1, forKey: book)
}
for (key, value) in dic.sorted(by: {$0.key < $1.key}) {
    if dic.values.max() == value { print(key); break }
}
