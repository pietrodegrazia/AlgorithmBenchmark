
//
//  PDGFileHelper.swift
//  LetNinjaSwift
//
//  Created by Pietro Degrazia on 3/27/16.
//  Copyright © 2016 pietrodegrazia. All rights reserved.
//

import Foundation

class PDGFileHelper {
    
    let randomNumbersFile = "/Users/pietrodegrazia/Documents/UFRGS/CPD/CPDLetNinjaSwift/CPDLetNinjaSwift/randomnumbers.bin"
    let tenMillion = 10000000
    
    var randomNumbers: [Int32] = [Int32]()
    
    func loadRandomNumbers(size: Int = 10000000) {
        let data = NSData(contentsOfFile: randomNumbersFile)!
        let dataRange = NSRange(location: 0, length: tenMillion * 4)
        randomNumbers = [Int32](count: tenMillion, repeatedValue: 0)
        data.getBytes(&randomNumbers, range: dataRange)
        print("Random Numbers loaded successfully")
    }
}
