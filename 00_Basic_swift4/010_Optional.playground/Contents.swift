//: Playground - noun: a place where people can play

import UIKit

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
print("convertedNumber: \(convertedNumber)")

if convertedNumber != nil {
    print("convertedNumber: \(convertedNumber!)")
}

if let actualNumber = Int(possibleNumber) {
    print("actualNumber: \(actualNumber)")
}

print("===========")

var serverResponseCode:Int? = 404
serverResponseCode = nil
print("serverResponseCode: \(serverResponseCode)")
