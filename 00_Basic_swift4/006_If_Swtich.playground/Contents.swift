//: Playground - noun: a place where people can play

import UIKit

let age = 19

if age < 3 {
    print("age: \(age) - Baby")
}else if age >= 3 && age < 20 {
    print("age: \(age) - Child")
}else {
    print("age: \(age) - Adult")
}

// https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ControlFlow.html#//apple_ref/doc/uid/TP40014097-CH9-ID129
switch age {
case 0, 1, 2:
    print("age: \(age) - Baby")
case 3..<20:
    print("age: \(age) - Child")
default:
    print("age: \(age) - Adult")
}
