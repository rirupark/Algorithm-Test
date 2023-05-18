//
//  24060. 알고리즘 수업 - 병합 정렬 1.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/18.
//
// 구현, 정렬, 재귀

func B24060() {
    let nk = readLine()!.split(separator: " ").map{Int($0)!}
    var array = readLine()!.split(separator: " ").map{Int($0)!}
    var count = 0, answer = -1

    func mergeSort(_ arr: [Int], _ p: Int, _ r: Int) {
        if arr.count <= 1 { return }
        if p < r && count < nk[1] {
            let q = (p + r) / 2 // q는 p, r의 중간 지점
            mergeSort(arr, p, q) // 전반부 정렬
            mergeSort(arr, q + 1, r) // 후반부 정렬
            merge(p, q, r) // 병합
        }
    }

    // arr[p...q]와 arr[q+1...r]을 병합하여 arr[p...r]을 오름차순 정렬된 상태로 만듦.
    // arr[p...q]와 arr[q+1...r]은 이미 오름차순으로 정렬되어 있음.
    func merge(_ p: Int, _ q: Int, _ r: Int) {
        var i = p, j = q + 1, t = 0
        var tmp = [Int]()
        
        while i <= q && j <= r {
            if array[i] <= array[j] {
                tmp.append(array[i])
                i += 1
            } else {
                tmp.append(array[j])
                j += 1
            }
        }
        while i <= q { // 왼쪽 배열 부분이 남은 경우
            tmp.append(array[i])
            i += 1
        }
        while j <= r { // 오른쪽 배열 부분이 남은 경우
            tmp.append(array[j])
            j += 1
        }
        i = p
        while i <= r {
            array[i] = tmp[t]
            count += 1
            if count == nk[1] { answer = array[i]; break }
            i += 1
            t += 1
        }
    }

    mergeSort(array, 0, nk[0] - 1)
    print(answer)
}
