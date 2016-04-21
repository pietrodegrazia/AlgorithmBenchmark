//
//  PDGInsertionSortBinarySearch.swift
//  LetNinjaSwift
//
//  Created by Pietro Degrazia on 3/31/16.
//  Copyright © 2016 pietrodegrazia. All rights reserved.
//

import Foundation

class PDGInsertionSortBinarySearch: PDGAlgorithm {
    func sort(arrayToBeSorted: [PDGDataType]) -> PDGAlgorithmResult {
        var comparisons = 1
        var swaps = 0
        let arraySize = arrayToBeSorted.count
        guard arraySize > 1 else {return PDGAlgorithmResult(arrayToBeSorted, comparisons, swaps)}
        
        var array = arrayToBeSorted
        var lastSortedIndex = 0
        
        for lastSortedIndex in 0 ..< (arraySize-1) {
            var currentSearchIndex = lastSortedIndex + 1
            let currentElement = array[currentSearchIndex]
            print("element: \(currentElement)")
            while (currentSearchIndex > 0) {
                print(array)
                comparisons += 1
                if (currentElement > array[currentSearchIndex-1]) {
                    print("newIndex: \(currentSearchIndex)")
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
    
    func determineInsertPosition(keyAt index: Int, array: [PDGDataType]) -> Int {
        var insertAtIndex = 0
        
        
        
        return insertAtIndex
    }
}
// 1 2 4 5 6 3

// 3 6 2 5 8 9 7 1