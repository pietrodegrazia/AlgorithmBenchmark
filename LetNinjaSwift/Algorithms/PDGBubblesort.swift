//
//  PDGBubblesort.swift
//  LetNinjaSwift
//
//  Created by Pietro Degrazia on 4/22/16.
//  Copyright © 2016 pietrodegrazia. All rights reserved.
//

import Foundation

class PDGBubblesort: PDGAlgorithm {
    
    func sort(inout array: [PDGDataType]) -> PDGAlgorithmResult {
        var sorted = false
        var swaps = 0
        var comparisons = 0
        
        while(!sorted) {
            var didSwap = false
            for index in 0 ..< (array.count - 1) {
                comparisons += 1
                if array[index] > array[index+1] {
                    swap(&array[index], &array[index+1])
                    swaps += 1
                    didSwap = true
                }
            }
            sorted = !didSwap
        }
        return PDGAlgorithmResult(array, comparisons: comparisons, swaps: swaps)
    }
}