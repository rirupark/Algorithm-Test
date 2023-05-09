//
//  1085. 직사각형에서 탈출.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/08.
//

func B1085() {
    let xywh = readLine()!.split(separator: " ").map{Int($0)!}
    let x = xywh[0], y = xywh[1], w = xywh[2], h = xywh[3]
    let minLength = min(min(x, y), min(w, h))
    print(min(minLength, min(abs(x-w), abs(y-h))))
}
