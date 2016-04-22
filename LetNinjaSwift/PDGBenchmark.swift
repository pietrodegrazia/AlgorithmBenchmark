//
//  PDGBenchmark.swift
//  LetNinjaSwift
//
//  Created by Pietro Degrazia on 3/27/16.
//  Copyright © 2016 pietrodegrazia. All rights reserved.
//

//insertion sort

//insertion sort with binary search
//shellsort 
//bubblesort
//quicksort
//mergesort
//heapsort

import Foundation

protocol PDGAlgorithm {
    func sort(inout array: [PDGDataType]) -> PDGAlgorithmResult
}

typealias PDGDataType = Int32
typealias PDGAlgorithmResult = (sortedArray: [PDGDataType], comparisons: Int, swaps: Int)
typealias PDGBenchmarkConfig = (algorithm:PDGAlgorithm, size:Int, order:OrderTypes)

//let Algorithms: [String] = ["insertionsort com busca linear", "insertionsort com busca binária", "shellsort", "bubblesort", "quicksort", "mergesort", "heapsort"]
let Algorithms: [PDGAlgorithm] = [PDGInsertionSort()]
let ArraySizes: [Int] = [1000, 10000, 100000, 1000000, 10000000]
//let OrderTypes: [String] = ["ordenado", "inverso", "randomico"]
public enum OrderTypes: String {
    case Increasing = "ordenado"
    case Decreasing = "inverso"
    case Random = "randomico"
    static let allValues = [Increasing, Decreasing, Random]
}

class PDGBenchmark {
    
    static let $ = PDGBenchmark()
    
    func runAllTests() {
        for algorithm in Algorithms {
            for size in ArraySizes {
                for order in OrderTypes.allValues {
                    let config = PDGBenchmarkConfig(algorithm, size, order)
                    runTestForConfig(config)
                }
            }
        }
    }
    
    func runTestForConfig(config: PDGBenchmarkConfig) {
        //Production
        var array = PDGArrayBuilder.arrayForConfig(config)
        
        //Debug
//        let array = PDGArrayBuilder.dummyArray
        
        let startTime = NSDate()
        print("--------------START--------------")
        
        //Production Code
//        let algorithmResult = config.algorithm.sort(array)
        
        //Testing Code
        let algorithmResult = PDGBubblesort().sort(&array)
        
        let duration = startTime.timeIntervalSinceNow
        print("comparisons: \(algorithmResult.comparisons)")
        print("swaps: \(algorithmResult.swaps)")
        print("duration: \(duration*1000)")
        print("--------------END--------------")
        print(algorithmResult.sortedArray)
//        print(sortedArray)
    }
}