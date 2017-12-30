//: Playground - noun: a place where people can play

import UIKit

// mutable array
var emptyArray1 = Array<String>()
var emptyArray2 = [String]()
print("emptyArray1: \(emptyArray1)")
print("emptyArray2.count: \(emptyArray2.count)")

emptyArray2.append("Anna")
emptyArray2.append("Alex")
print("emptyArray2: \(emptyArray2)")

print("===========")

var emptyArray3:[String] = ["Anna", "Alex", "Brian", "Jack"]
emptyArray3 += ["Choi"]
emptyArray3 += ["Jin"]
emptyArray3 += ["Young"]
print("emptyArray3: \(emptyArray3)")
print("emptyArray3[3]: \(emptyArray3[3])")

emptyArray3[3] = "Hi"
print("emptyArray3[3]: \(emptyArray3[3])")

emptyArray3[4...6] = ["A", "B", "C"]
print("emptyArray3: \(emptyArray3)")
print("emptyArray3.count: \(emptyArray3.count)")

print("===========")

// immutable array
let emptyArray4 = ["Anna", "Alex", "Brian", "Jack"]
emptyArray4[3] = "hello"
print("emptyArray4: \(emptyArray4)")




