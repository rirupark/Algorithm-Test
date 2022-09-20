//
//  Lv1. receiveReport.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/06/24.
//

import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var report_list = [String : Set<String>]()
    var result: [Int] = Array(repeating: 0, count: id_list.count)
    var id_dic = [String : Int]()

    // result 딕셔너리에 신고한 사용자별 인덱스 값 매핑
    for (n, id) in id_list.enumerated() { id_dic[id] = n }

    // 신고 받은 유저에 대한 신고한 유저들을 딕셔너리로 매핑
    for i in report {
        let id = i.components(separatedBy: " ")
        let report_id = String(id[0])
        let reported_id = String(id[1])
        if report_list[reported_id] == nil { report_list[reported_id] = [report_id] }
        else { report_list[reported_id]!.insert(report_id) }
    }


    // 신고한 유저에게 메일 발송 (중복 신고 예외 처리)
    for info in report_list {
        if info.value.count >= k {
            for id in info.value { result[id_dic[id]!] += 1 }
        }
    }
    
    return result
}
