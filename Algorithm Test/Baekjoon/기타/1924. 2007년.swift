//
//  1924. 2007년.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/08/03.
//

func B1924() {
    let xy = readLine()!.split(separator: " ").map{Int($0)!}
    let dayArr = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
    var day = xy[1]
    for i in 1..<xy[0] {
        switch i {
        case 2:
            day += 28
        case 4, 6, 9, 11:
            day += 30
        default:
            day += 31
        }
    }
    print(dayArr[day % 7])
}
