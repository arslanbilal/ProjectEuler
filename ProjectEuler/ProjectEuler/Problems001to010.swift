//
//  Problem001to010.swift
//  ProjectEuler
//
//  Created by Bilal ARSLAN on 16/08/14.
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



//////     ##  The Problems Solutions   ##

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
        for var i = 0; i <= value.count/2; i++
        {
            if value.elementOfIndex(i) != value.elementOfIndex(value.count - i - 1) {
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


//Problem 5
func problem005() -> Int
{
    var result: Int = 1
    
    for var i = 19; i > 1; i--
    {
        if result % i != 0
        {
            for var j = 2; j <= i; j++
            {
                if (result * j) % i == 0
                {
                    result *= j
                    break
                }
            }
        }
    }    
    return result
}


//Problem 6
func problem006() -> Int
{
    var sumOfSquare: Int = 0
    var squareOfSum: Int = 0
    
    for var i = 1; i <= 100; i++
    {
        sumOfSquare += i*i
        squareOfSum += i
    }
    return ((squareOfSum * squareOfSum) - sumOfSquare)
}


//Problem 7
func problem007() -> Int
{
    var number: Int = 0
    var index: Int = 2
    var result: Int = -1
    
    for ;;
    {
        if isPrime(index)
        {
            number++
        }
        if number == 10_001
        {
            result = index
            break
        }
        index++
    }
    return result
}


//Problem 8
func problem008() -> Int
{
    var greatestProduct: Int = 0
    var temp: Int = 1
    
    let number: String = "7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450"
    
    for var i: Int = 0; i < (number.count - 13) ; i++
    {
        for var j:Int = i; j < (i + 13); j++
        {
            temp *= (number.elementOfIndex(j)).toInt()!
        }
        
        if greatestProduct < Int(temp) {
            greatestProduct = Int(temp)
        }
        temp = 1
    }
    return greatestProduct
}


//Problem 9
func problem009() -> Int
{
    for var i: Int = 1; i < 1000; i++
    {
        for var j: Int = i; j < 1000; j++
        {
            for var k: Int = j; k < 1000; k++
            {
                if (i*i + j*j) == k*k
                {
                     if (i + j + k) == 1000
                     {
                        return i * j * k
                    }
                }
            }
        }
    }
    return -1
}


//Problem 10
func problem010() -> Int
{
    var sum: Int = 0
    
    for var i: Int = 2; i < 2_000_000; i++
    {
        if isPrime(i)
        {
            sum += i
        }
    }
    return sum
}