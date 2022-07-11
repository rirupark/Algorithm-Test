//
//  Lv1. watermelon?.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/11.
//

func solutionWatermelon(_ n:Int) -> String {
    var result = ""
    for num in  1...n { result.append(num % 2 == 0 ? "박" : "수") }
    return result
}
