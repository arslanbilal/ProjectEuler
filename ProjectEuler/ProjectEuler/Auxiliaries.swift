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
    var count: Int
        {
        return countElements(self)
    }
    
    func elementOfIndex(i:Int) -> String
    {
        return String(Array(self)[i])
    }
}


func isPrime(value: Int) -> Bool
{
    for var i:Int = Int(pow(Float(value),0.5)); i > 1; i--
    {
        if value % i == 0
        {
            return false
        }
    }
    return true
}

func isPalindrome(value: String) -> Bool
{
    for var i = 0; i <= value.count/2; i++ {
        if value.elementOfIndex(i) != value.elementOfIndex(value.count - i - 1) {
            return false
        }
    }
    return true
}