//: Playground - noun: a place where people can play

import UIKit

// mutable dictionary
var emptyDictionary1 = Dictionary<String, Int>()
var emptyDictionary2 = [String: Int]()

print("emptyDictionary1.isEmpty: \(emptyDictionary1.isEmpty)")

if emptyDictionary2.isEmpty {
    print("nothing in dictionary2")
}
print("emptyDictionary2.count: \(emptyDictionary2.count)")

emptyDictionary2["ant"] = 6
emptyDictionary2["snake"] = 0
print("emptyDictionary2.count: \(emptyDictionary2.count)")

print("===========")

var emptyDictionary3 = ["ant":6,"snake":0,"cheetah":4]
print("emptyDictionary3: \(emptyDictionary3)")

emptyDictionary3["human"] = 2
emptyDictionary3["snake"] = 1
print("emptyDictionary3: \(emptyDictionary3)")

print("emptyDictionary3[\"cheetah\"]!: \(emptyDictionary3["cheetah"]!)")
print("===========")

// immutable dictionary
let emptyDictionary4 = ["ant":6,"snake":0,"cheetah":4]
//emptyDictionary4["snake"] = 1
print("emptyDictionary4: \(emptyDictionary4)")
