//
//  11382. 꼬마 정민.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/03/09.
//

func B11382() {
    let nums = (readLine()!.split(separator:" ")).map{Int($0)!}
    print(nums.reduce(0) {$0 + $1})
}

