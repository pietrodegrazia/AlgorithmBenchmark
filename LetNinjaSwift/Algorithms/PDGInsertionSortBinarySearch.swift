//
//  PDGInsertionSortBinarySearch.swift
//  LetNinjaSwift
//
//  Created by Pietro Degrazia on 3/31/16.
//  Copyright © 2016 pietrodegrazia. All rights reserved.
//

import Foundation

class PDGInsertionSortBinarySearch: PDGAlgorithm {
    
    func sort(inout array: [PDGDataType]) -> PDGAlgorithmResult {
        var comparisons = 1
        var swaps = 0
        let arraySize = array.count
        guard arraySize > 1 else {return PDGAlgorithmResult(array, comparisons, swaps)}
        
        for lastSortedIndex in 0 ..< (arraySize-1) {
            var currentElementIndex = lastSortedIndex + 1
            let insertionIndex = findInsertionIndex(forKeyAt: currentElementIndex, array: array, rangingFrom: 0, to: currentElementIndex)
            
            for index in currentElementIndex.stride(to: insertionIndex, by: -1) {
                swap( &array[index], &array[index-1] )
            }
        }
    
        return PDGAlgorithmResult(array, comparisons, swaps)
    }
    
    func findInsertionIndex(forKeyAt index: Int, array: [PDGDataType], rangingFrom min: Int, to max: Int) -> Int {
        if min == max {
            return min
        }
        
        let currentSearchIndex = min + ((max - min)/2)
        
        if array[index] > array[currentSearchIndex] {
            return findInsertionIndex(forKeyAt: index, array: array, rangingFrom: currentSearchIndex+1, to: max)
        } else if array[index] < array[currentSearchIndex] {
            return findInsertionIndex(forKeyAt: index, array: array, rangingFrom: min, to: currentSearchIndex)
        } else {
            return currentSearchIndex
        }
    }
}