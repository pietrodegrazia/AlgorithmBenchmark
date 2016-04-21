//
//  ViewController.swift
//  LetNinjaSwift
//
//  Created by Pietro Degrazia on 3/14/16.
//  Copyright © 2016 pietrodegrazia. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    let destinationFileName = "resultados_00243666.txt"
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        PDGBenchmark.$.runAllTests()
        
        PDGFileHelper.$.loadRandomNumbers()
        
        let config = PDGBenchmarkConfig(PDGInsertionSort(), 10, OrderTypes.Decreasing)
        PDGBenchmark.$.runTestForConfig(config)
        
    }
}

