//
//  Lv3. 베스트앨범.swift
//  Algorithm Test
//
//  Created by 박민주 on 11/18/23.
//

import Foundation

func solution베스트앨범(_ genres:[String], _ plays:[Int]) -> [Int] {
    var genresDic = [String: Int]()
    var dic = [String: [(Int, Int)]]()
    var arr = [Int]()
    
    for i in 0..<genres.count {
        genresDic.updateValue((genresDic[genres[i]] ?? 0) + plays[i], forKey: genres[i])
    }
    for i in 0..<genres.count {
        dic[genres[i], default: []].append((i, plays[i]))
    }
    for genre in genresDic.sorted(by: {$0.value > $1.value}) {
        for (i, info) in dic[genre.key]!.sorted(by: { $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 > $1.1 }).enumerated() {
            if i > 1 { break }
            arr.append(info.0)
        }
    }
    return arr
}
