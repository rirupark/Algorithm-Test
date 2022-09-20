//
//  Lv2. FindPrime.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/08/17.
//

//import Foundation
//
//func solutionFindPrime(_ numbers:String) -> Int {
//    var menuDic = [String : Int]()
//    var ans = [String]()
//    
//    // 메뉴 조합 함수
//    func dfs(_ index:Int, _ menus:[Character], _ result:String) {
//        // 코스 최대 길이보다 새 메뉴 조합이 길면 고려 X
//        if course.max()! < result.count { return }
//        // 코스에 포함된 길이의 메뉴 조합일 경우
//        if course.contains(result.count) {
//            if menuDic.keys.contains(result) { menuDic[result]! += 1 }
//            else {  menuDic[result] = 1 }
//        }
//        // menus 배열에서 순서대로 순회하며 재귀
//        for i in index..<menus.count {
//            dfs(i+1, menus, "\(result)\(menus[i])")
//        }
//    }
//    
//    // 메뉴 dfs
//    for order in orders { dfs(0, order.sorted(), "") }
//    return 0
//}
//
//print(solutionFindPrime("011"))
