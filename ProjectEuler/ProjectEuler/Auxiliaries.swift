//
//  Auxiliaries.swift
//  ProjectEuler
//
//  Created by Bilal ARSLAN on 19/08/14.
//  Copyright (c) 2014 Bilal ARSLAN. All rights reserved.
//

import Foundation


//////     ##  The Auxiliary Functions  ##

extension String
{
    var length: Int {
        return characters.count
    }
    
    func elementOfIndex(i:Int) -> String
    {
        return String(Array(self.characters)[i])
    }
}


public func isPrime(value: Int) -> Bool
{
    for var i = Int(pow(Float(value),0.5)); i > 1; i-- {
        if value % i == 0 {
            return false
        }
    }
    return true
}

public func isPalindrome(value: String) -> Bool
{
    for var i = 0; i <= value.length/2; i++ {
        if value.elementOfIndex(i) != value.elementOfIndex(value.length - i - 1) {
            return false
        }
    }
    return true
}

public func getTriangularNumberWith(number: Int) -> Int {
    return number * (number + 1) / 2
}

public func numberOfDvisiorOf(number: Int) -> Int {
    
    var count = 1 // number is number's one divisior.
    
    for var i = (number / 2); i > 0; i-- {
        if number % i == 0 {
            count++
        }
    }
    return count
}



