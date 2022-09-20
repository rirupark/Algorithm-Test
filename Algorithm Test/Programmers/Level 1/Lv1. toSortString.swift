//
//  Lv1. toSortString.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/07.
//

func solutionSortString(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted(by:{ Array($0)[n] == Array($1)[n] ? $0 < $1 : Array($0)[n] < Array($1)[n] })
}
