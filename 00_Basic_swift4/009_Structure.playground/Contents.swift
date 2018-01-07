//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var name = ["Park", "Choi"]
var age = [3, 4]
var height = [40, 50]

print("name: \(name[0]), age: \(age[0]), height: \(height[0])")

print("===========")

struct Student{
    var name:String
    var age:Int
    var height:Int
}

var student1 = Student(name: "Park", age: 3, height: 40)
var student2 = Student(name: "Choi", age: 4, height: 50)
print("name: \(student1.name), age: \(student1.age), height: \(student1.height)")
