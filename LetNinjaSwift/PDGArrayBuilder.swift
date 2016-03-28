//
//  PDGArrayBuilder.swift
//  LetNinjaSwift
//
//  Created by Pietro Degrazia on 3/27/16.
//  Copyright © 2016 pietrodegrazia. All rights reserved.
//

import Foundation

class PDGArrayBuilder {
    
    static func arrayForConfig(config: PDGBenchmarkConfig) -> [Int32] {
        var array = [Int32](count: config.size, repeatedValue: 0)
        
        switch config.order {
        case .Ordenado:
            for (var i = 0; i < config.size; i++){
                array[i] = Int32(i)
            }
            break
        case .Inverso:
            var value = 0
            for (var i = config.size-1; i >= 0; i--){
                array[i] = Int32(value)
                value++
            }
            break
        default:break
        }
    return array
    }
}