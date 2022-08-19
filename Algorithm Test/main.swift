//  Algorithm Test main 실행파일
//  Created by 박민주 on 2022/06/21


import Foundation

func solutionFindPrime(_ numbers:String) -> Int {
    var combi = ""
    var numArr = [String]()
    var arr = numbers.map{String($0)}
    
    func dfs(_ index: Int, _ sum: String) {
        if index <= numbers.count {
            if index == numbers.count - 1 {
                combi += arr[index]
                numArr.append(combi)
                combi = ""
                return
            }

            dfs(index + 1, "")

        }
    }
    dfs(-1, "")
    print(numArr)
    return 0
}

print(solutionFindPrime("011"))
