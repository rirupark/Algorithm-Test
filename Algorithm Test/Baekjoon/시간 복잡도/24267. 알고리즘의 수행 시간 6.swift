//
//  24267. 알고리즘의 수행 시간 6.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/09.
//

func B24267() {
    let n = Int(readLine()!)!
    print((n - 2) * (n - 1) * n / 6)
    print(3)
}

//MenOfPassion(A[], n) {
//    sum <- 0;
//    for i <- 1 to n - 2
//        for j <- i + 1 to n - 1
//            for k <- j + 1 to n
//                sum <- sum + A[i] × A[j] × A[k]; # 코드1
//    return sum;
//}

// 1, 2, 3, 4, 5
// 1 -> 23456 5회 -> 34567
// 2 -> 3456 4회 -> 4567
// 3 -> 456 3회 -> 567
// 4 -> 56 2회 -> 67
// 5 -> 6 1회 -> 7
// 1부터 n까지의 숫자중 3가지를 뽑아 중복 없이 크기 순으로 작성하는 경우의 수
// n! / (n-3)! * 3! = (n-2)(n-1)n / 6
