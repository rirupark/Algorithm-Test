//
//  Lv1. newID.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/06/21.
//

import Foundation

func solution(_ new_id:String) -> String {
    
  // stage 1
  var new_id = new_id.lowercased()

  // stage 2
  new_id = new_id.filter{$0.isNumber || $0.isLetter || $0 == "-" || $0 == "_" || $0 == "."}

  // stage 3
  while new_id.contains("..") {
    new_id = new_id.replacingOccurrences(of: "..", with: ".")
  }

  // stage 4
  if new_id.hasPrefix(".") { new_id.removeFirst() }

  // stage 5
  if new_id.isEmpty { new_id = "a" }

  // stage 6
  if new_id.count >= 16 { new_id = String(new_id.prefix(15)) }
  if new_id.hasSuffix(".") { new_id.removeLast() } // stage 4, 6

  // stage 7
  while new_id.count <= 2 { new_id += String(new_id.last!) }
  
  return new_id
}
