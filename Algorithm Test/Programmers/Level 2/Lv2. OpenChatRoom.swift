//
//  Lv2. OpenChatRoom.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/08/07.
//

import Foundation

func solutionOpenChat(_ record:[String]) -> [String] {
    var record2 = [[String]]()
    var result = [String]()
    var info = [String:String]()
    
    for str in record { record2.append(str.components(separatedBy: " ")) }
    
    // 아이디와 이름 저장
    for arr in record2 {
        if arr[0] == "Enter" || arr[0] == "Change" { info[arr[1]] = arr[2] }
    }
    
    // 기록 저장
    for arr in record2 {
        if arr[0] == "Leave" { result.append("\(info[arr[1]]!)님이 나갔습니다.") }
        if arr[0] == "Enter" { result.append("\(info[arr[1]]!)님이 들어왔습니다.") }
    }

    return result
}
