//
//  Lv2. Pair&Remove.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/08/09.
//

import Foundation

func solutionPairRemove(_ s:String) -> Int{
    let arr = Array(s)
    var tmp = [Character]()

    for i in 0..<arr.count {
        if tmp.isEmpty { tmp.append(arr[i]) }
        else {
            if arr[i] == tmp.last! { tmp.removeLast() }
            else { tmp.append(arr[i]) }
        }
    }

    return tmp.isEmpty ? 1 : 0
}
