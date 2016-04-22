//
//  PDGInsertionSort.swift
//  LetNinjaSwift
//
//  Created by Pietro Degrazia on 3/27/16.
//  Copyright © 2016 pietrodegrazia. All rights reserved.
//

import Foundation

class PDGInsertionSort: PDGAlgorithm {
    func sort(inout array: [Int32]) -> PDGAlgorithmResult {
        var comparisons = 1
        var swaps = 0
        let arraySize = array.count
        guard arraySize > 1 else {return PDGAlgorithmResult(array, comparisons, swaps)}
        
        for lastSortedIndex in 0 ..< arraySize-1 {
            var currentSearchIndex = lastSortedIndex + 1
            let currentElement = array[currentSearchIndex]
            while (currentSearchIndex > 0) {
                comparisons += 1
                if (currentElement > array[currentSearchIndex-1]) {
                    break
                } else {
                    swaps += 1
                    swap(&array[currentSearchIndex], &array[currentSearchIndex-1])
                }
                currentSearchIndex -= 1
            }
        }
        return PDGAlgorithmResult(array, comparisons, swaps)
    }
}