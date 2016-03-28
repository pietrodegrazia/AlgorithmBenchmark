//
//  PDGBenchmark.swift
//  LetNinjaSwift
//
//  Created by Pietro Degrazia on 3/27/16.
//  Copyright © 2016 pietrodegrazia. All rights reserved.
//

import Foundation

protocol PDGAlgorithm {
    func sort()
}

typealias PDGBenchmarkConfig = (algorithm:PDGAlgorithm, size:Int, order:OrderTypes)


//let Algorithms: [String] = ["insertionsort com busca linear", "insertionsort com busca binária", "shellsort", "bubblesort", "quicksort", "mergesort", "heapsort"]
let Algorithms: [PDGAlgorithm] = [PDGInsertionSort()]
let ArraySizes: [Int] = [1000, 10000, 100000, 1000000, 10000000]
//let OrderTypes: [String] = ["ordenado", "inverso", "randomico"]
enum OrderTypes: String {
    case Ordenado = "ordenado"
    case Inverso = "inverso"
    case Randomico = "randomico"
    static let allValues = [Ordenado, Inverso, Randomico]
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
        let array = PDGArrayBuilder.arrayForConfig(config)
        print(config)
        print(array)
        print("-------------------------------------------")
    }
}