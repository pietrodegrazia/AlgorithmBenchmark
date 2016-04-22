//
//  PDGShellsort.swift
//  LetNinjaSwift
//
//  Created by Pietro Degrazia on 3/31/16.
//  Copyright © 2016 pietrodegrazia. All rights reserved.
//

import Foundation

class PDGShellsort: PDGAlgorithm {
    func sort(inout array: [PDGDataType]) -> PDGAlgorithmResult {
        var sublistCount = array.count / 2
        while sublistCount > 0 {
            for pos in 0..<sublistCount {
                insertionSort(&array, start: pos, gap: sublistCount)
            }
            sublistCount = sublistCount / 2
        }
      return PDGAlgorithmResult(sortedArray: array, comparisons: 0, swaps: 0)
    }
    
    func insertionSort(inout list: [PDGDataType], start: Int, gap: Int) {
        for i in (start + gap).stride(to: list.count, by: gap){
            let currentValue = list[i]
            var pos = i
            while pos >= gap && list[pos - gap] > currentValue {
                list[pos] = list[pos - gap]
                pos -= gap
            }
            list[pos] = currentValue
        }
    }
}