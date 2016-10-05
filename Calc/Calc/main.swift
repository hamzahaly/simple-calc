//
//  main.swift
//  Calc
//
//  Created by iGuest on 10/4/16.
//  Copyright © 2016 iGuest. All rights reserved.
//

import Foundation

print("Hello, World!")

print("git test")

let resp1 = readLine(strippingNewline: true)!
let num1 = Int.init(resp1)!
var nextResp = readLine(strippingNewline: true)!
var nextNum: Int

//if Int.init(nextResp) == nil {
//    print("don't crash please, I'm checking")
//}

// if the user wants to do a factorial operation
if nextResp == "fact" {
    var fact = num1;
    var operand = num1 - 1
    for index in 1...num1 - 1 {
        fact =  fact * operand
        operand -= 1
    }
    print(fact)
// if the user wants to do a multiple number operation
} else if (Int.init(nextResp) != nil) {
    
    // The next input from the user should be a number
    //var nextResp = readLine(strippingNewline: true)!
    //var nextNum = Int.init(resp2)! // Change response into an integer
    nextNum = Int.init(nextResp)!
    var count = 1;
    var sum = num1;
    var avg: Double = 0;
    // While we are still recieving numbers from the user
    while (Int.init(nextResp) != nil) {
        print("we got a number response")
        count += 1
        sum += nextNum
        nextResp = readLine(strippingNewline: true)!
        // User wants to do a count operation
        if nextResp == "count" {
            print("Let's count how many numbers there are")
            print("Count: " + "\(count)" )
        }
        // User wants to do an average operation
        else if nextResp == "avg" {
            print("Let's find the average of all the numbers")
            print("sum: " + "\(sum)")
            print("count: " + "\(count)")
            
            avg = Double(sum) / Double(count)
            print("Average: " + "\(avg)")
        }
        // User wants to input more numbers
        else {
            print("We got a number response")
            nextNum = Int.init(nextResp)!
        }
    }
    
//if the user want sto do a 2 number operation
} else {
    // print("we got an operation response")
    
    let resp3 = readLine(strippingNewline: true)!
    
    let num3 = Int.init(resp3)!
    
    switch nextResp {
    case "add":
        print("adding")
        print(num1 + num3)
    case "sub":
        print("subtracting")
        print(num1 - num3)
    case "mul":
        print("multiplying")
        print(num1 * num3)
    case "div":
        print("dividing")
        print(Double(num1) / Double(num3))
    case "mod":
        print("modding")
        print(num1 % num3)
    default:
        print("not an operation")
    }
    
}


