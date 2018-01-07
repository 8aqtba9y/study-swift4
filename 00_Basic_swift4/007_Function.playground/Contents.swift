//: Playground - noun: a place where people can play

import UIKit

func sayHello1() {
    print("Hello")
}
sayHello1()

func sayHello2(name:String) {
    print("Hello \(name)")
}
sayHello2(name: "Choi")

func sayHello3(name:String) -> String {
    return "Hello " + name
}
print(sayHello3(name: "Choi"))

func sayHello4(name:String = "Park") {
    print("Hello \(name)")
}
sayHello4()
sayHello4(name: "Kim")

// with argument label
func sayHello5(insertYourName name:String, internationalAge age:Int) {
    print("Hello \(name) is \(age) years old")
}
sayHello5(insertYourName: "Choi", internationalAge: 10)

// without argument label
func sayHello6(_ name:String, _ age:Int) -> String {
    return "Hello \(name) is \(age) years old"
}
print(sayHello6("Choi", 20))
