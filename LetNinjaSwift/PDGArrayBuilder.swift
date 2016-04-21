//
//  PDGArrayBuilder.swift
//  LetNinjaSwift
//
//  Created by Pietro Degrazia on 3/27/16.
//  Copyright © 2016 pietrodegrazia. All rights reserved.
//

import Foundation

class PDGArrayBuilder {
    
    static var dummyArray: [PDGDataType] = [3, 5, 4, 7, 6, 2, 1, 0, -1]
    
    static func arrayForConfig(config: PDGBenchmarkConfig) -> [PDGDataType] {
        var array = [PDGDataType](count: config.size, repeatedValue: 0)
        
        switch config.order {
        case .Increasing:
            for i in 0 ..< config.size {
                array[i] = PDGDataType(i)
            }
            break
        case .Decreasing:
            var value = 0
            
            for i in (config.size - 1).stride(through: 0, by: -1) {
                array[i] = PDGDataType(value)
                value += 1
            }
//            
//            for (var i = config.size-1; i >= 0; i--){
//            
//            }
            break
        case .Random:
            array = PDGFileHelper.$.array(config.size)
        }
    return array
    }
}