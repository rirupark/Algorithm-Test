//  Algorithm Test main 실행파일
//  Created by 박민주 on 2022/06/21

import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var sum = 0
    var result = 0
    
    for element in d.sorted() {
        sum += element
        result += 1
        if sum > budget { result -= 1; break }
    }
    
    return result
}

