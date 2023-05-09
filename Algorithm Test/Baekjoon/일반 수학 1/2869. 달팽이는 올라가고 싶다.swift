//
//  2869. 달팽이는 올라가고 싶다.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/07.
//

// MARK: 반복문 사용 시 시간 초과 -> 공식 도출로 해결
// day = (v-b)/(a-b) <- day*a-(day-1)*b = v
/// 마지막날은 낮에 올라간 것만 카운트 해주면 됨.
func B2869() {
    let abv = readLine()!.split(separator: " ").map{Int($0)!}
    let a = abv[0], b = abv[1], v = abv[2]
    if (v-b)%(a-b) == 0 { print((v-b)/(a-b)) }
    else { print((v-b)/(a-b) + 1) }
}
