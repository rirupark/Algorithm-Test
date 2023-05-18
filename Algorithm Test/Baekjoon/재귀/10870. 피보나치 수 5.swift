//
//  10870. 피보나치 수 5.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/18.
//

func B10870() {
    func fibo(_ n: Int) -> Int {
        if n == 0 { return 0 }
        if n == 1 { return 1 }
        return fibo(n - 1) + fibo(n - 2)
    }
    print(fibo(Int(readLine()!)!))
}
