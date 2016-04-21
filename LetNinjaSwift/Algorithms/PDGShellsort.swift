////
////  PDGShellsort.swift
////  LetNinjaSwift
////
////  Created by Pietro Degrazia on 3/31/16.
////  Copyright © 2016 pietrodegrazia. All rights reserved.
////
//
//import Foundation
//
//class PDGShellsort: PDGAlgorithm {
//    static func sort(array: [Int32]) -> [Int32] {
//        var sublistCount = array.count / 2
//        while sublistCount > 0 {
//            for pos in 0..<sublistCount {
//                shellInsertionSort(&array, start: pos, gap: sublistCount)
//            }
//            sublistCount = sublistCount / 2
//        }
//    }
//
//    func shellInsertionSort(list: [Int], start: Int, gap: Int) {
//        for i in (start + gap).stride(to: list.count, by: gap){
//            let currentValue = list[i]
//            var pos = i
//            while pos >= gap && list[pos - gap] > currentValue {
//                list[pos] = list[pos - gap]
//                pos -= gap
//            }
//            list[pos] = currentValue
//        }
//    }
//
//}