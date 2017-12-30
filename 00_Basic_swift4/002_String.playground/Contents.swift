//: Playground - noun: a place where people can play

import UIKit

var str1 = "Hello, playground. \nnice meeting you. \n\"I am begginner in swift\""
print("str1: \(str1)")

var str2 = """
Hello, playground.
nnice meeting you.
"I am begginner in swift"
"""
print("str2: \(str2)")

print("============")

var emptyString = ""
var anotherEmptyString = String()

print("emptyString.isEmpty: \(emptyString.isEmpty)")
if anotherEmptyString.isEmpty {
    print("Nothing to see here")
}

print("============")

let string1 = "hello"
let string2 = " there"

var welcome = string1 + string2
print("welcome: \(welcome)")

var instruction = "look over"
instruction += string2
print("instruction: \(instruction)")

print("instruction.count: \(instruction.count)")
