//
//  24265. 알고리즘의 수행 시간 4.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/09.
//

func B24265() {
    let n = Int(readLine()!)!
    print(n * (n - 1) / 2)
    print(2)
}

//MenOfPassion(A[], n) {
//    sum <- 0;
//    for i <- 1 to n - 1
//        for j <- i + 1 to n
//            sum <- sum + A[i] × A[j]; # 코드1
//    return sum;
//}

// 1, 2, 3, 4, 5, 6
// 1 -> 234567 6회
// 2 -> 34567 5회
// 3 -> 4567 4회
// 4 -> 567 3회
// 5 -> 67 2회
// 6 -> 7 1회
