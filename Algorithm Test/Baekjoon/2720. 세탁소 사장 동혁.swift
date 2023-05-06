//
//  2720. 세탁소 사장 동혁.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/07.
//

func B2720() {
    let t = Int(readLine()!)!

    // MARK: 가능한 거스름돈 단위 즉시 저장
    for _ in 0..<t {
        var result = [Int]()
        var money = Int(readLine()!)!
        result.append(money / 25)
        money = money % 25
        result.append(money / 10)
        money = money % 10
        result.append(money / 5)
        money = money % 5
        result.append(money)
        print(result.map{String($0)}.joined(separator: " "))
    }

    // MARK: 화폐 단위별 개수 저장
    for _ in 0..<t {
        let money = Int(readLine()!)!
        let quarter = money / 25
        let dime = (money % 25) / 10
        let nickel = ((money % 25) % 10) / 5
        let penny = ((money % 25) % 10) % 5
        print(quarter, dime, nickel, penny)
    }
}
