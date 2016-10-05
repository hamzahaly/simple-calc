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
let resp2 = readLine(strippingNewline: true)!
let num2 = Int.init(resp2)!

// if the user wants to do a factorial operation
if resp2 == "fact" {
    for index in 1...num1 {
        print("let's multiply every number after num1")
    }
// if the user wants to do a multiple number operation
} else if (num2 != nil) {
    
    // The next input from the user should be a number
    var nextResp = readLine(strippingNewline: true)!
    var nextNum = Int.init(resp2)! // Change response into an integer
    var count = 0;
    var sum = 0;
    sum += num1;
    var avg = 0;
    // While we are still recieving numbers from the user
    while (nextNum != nil) {
        print("we got a number response")
        count += 1
        sum += nextNum
        nextResp = readLine(strippingNewline: true)!
        
        nextNum = Int.init(nextResp)!
        if nextNum == nil {
            print("we got a non number response")
        }
    }
    
    // User wants to do a count operation
    if (nextResp == "count") {
        print(count)
    }
    // User wants to do a average operation
    else if (nextResp == "avg") {
        avg = sum / count
        print(avg)
    }
    
//if the user want sto do a 2 number operation
} else {
    print("we got an operation response")
    
    let resp3 = readLine(strippingNewline: true)!
    
    let num3 = Int.init(resp2)!
    
    switch resp2 {
    case "add":
        print("adding")
    case "sub":
        print("subtracting")
    case "mul":
        print("multiplying")
    case "div":
        print("dividing")
    case "mod":
        print("modding")
    default:
        print("not an operation")
    }
    
}


