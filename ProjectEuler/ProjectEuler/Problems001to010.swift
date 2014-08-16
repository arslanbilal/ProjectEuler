//
//  Problem001to010.swift
//  ProjectEuler
//
//  Created by Bilal ARSLAN on 16/08/14.
//  Copyright (c) 2014 Bilal ARSLAN. All rights reserved.
//

import Foundation

extension String
{
    func elementOfIndex(i:Int) -> String
    {
        return String(Array(self)[i])
    }
}

//Problem 1
func problem001() -> Int
{
    var sum:Int = 0
    
    for var i = 3; i < 1000; i++
    {
        if i % 3 == 0
        {
            sum += i
            continue
        }
        if i % 5 == 0
        {
            sum += i
        }
    }
    return sum
}


//Promlem 2
func problem002() -> Int
{
    var sum: Int = 2
    var num1: Int = 1
    var num2: Int = 2
    
    for var i = 0; i<4_000_000; i++
    {
        if num2 > 4_000_000
        {
            break;
        }
        var temp = num2
        num2 = num1 + num2
        num1 = temp
        
        if num2%2 == 0
        {
            sum += num2
        }
    }
    
    return sum	
}


//Problem 3
func problem003() -> Int
{
    var prime = 0
    
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
    
    for var i = Int(pow(600_851_475_143,0.5)); i > 1; i--
    {
        if 600_851_475_143 % i == 0
        {
            if isPrime(i)
            {
                return i
            }
        }
    }
    return -1
}


//Problem 4
func problem004() -> Int
{
    var result = 0
    func isPalindrome(value: String) -> Bool
    {
        for var i = 0; i <= countElements(value)/2; i++
        {
            if value.elementOfIndex(i) != value.elementOfIndex(countElements(value) - i - 1) {
                return false
            }
        }
        return true
    }
    
    for var i = 100; i <= 999; i++
    {
        for var j = 100; j <= 999; j++
        {
            var value:Int = i*j
            
            if isPalindrome(String(value))
            {
                if result < value
                {
                    result = value
                }
            }
        }
    }
    return result
}