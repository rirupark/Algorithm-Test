//
//  Lv2. H-Index.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/08/17.
//

import Foundation

func solutionH_Index(_ citations:[Int]) -> Int {
    let citations = citations.sorted(by: >)
    var answer = 0
    for i in 0..<citations.count {
        if i+1 <= citations[i] { answer = i+1 }
    }
    return answer
}
