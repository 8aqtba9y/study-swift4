//: Playground - noun: a place where people can play

import UIKit

// type inference
var str = "Hello, playground"
var version = 1.5
let year = 2015
let handsome = true

print("str : \(type(of: str))")
print("version : \(type(of: version))")
print("year : \(type(of: year))")
print("handsome : \(type(of: handsome))")


// type annotation
var str2:String = "Hello, playground"
var version2:Double = 1.5
let year2:Int = 2015
let handsome2:Bool = true

print("str2 : \(type(of: str2))")
print("version2 : \(type(of: version2))")
print("year2 : \(type(of: year2))")
print("handsome2 : \(type(of: handsome2))")
