//: Playground - noun: a place where people can play

import UIKit

class Vehicle{
    var currentSpeed = 0.0 //stored property
    var description:String { //computed property
        return "Traveling at \(currentSpeed) miles per hour"
    }
    
    func makeNoise(){
        print("noiseless")
    }
}

let someVehicle = Vehicle()
someVehicle.currentSpeed = 1.0
print("someVehicle.description: \(someVehicle.description)")
someVehicle.makeNoise()

print("===========")

class Bicycle: Vehicle{
    var hasBasket = false
}

let someBicycle = Bicycle()
someBicycle.hasBasket = true
someBicycle.currentSpeed = 15.0
print("someBicycle.currentSpeed: \(someBicycle.currentSpeed)")
print("someBicycle.hasBasket: \(someBicycle.hasBasket)")

print("===========")

class Tandem: Bicycle{
    var currentNumberOfPassengers = 0
    override var description: String{ //computed property
        return "Traveling at \(currentSpeed) miles per hour, number of passenger: \(currentNumberOfPassengers)"
    }
}

let someTandem = Tandem()
someTandem.hasBasket = true
someTandem.currentNumberOfPassengers = 2
someTandem.currentSpeed = 22.0
print("someTandem.description: \(someTandem.description)")

print("===========")

class Train: Vehicle{
    override func makeNoise() {
        print("Choo Choo")
    }
}

let someTrain = Train()
someTrain.makeNoise()

print("===========")

class Car: Vehicle{
    var gear = 1
    override init() {
        print("Car")
    }
    init(newGear:Int) {
        gear = newGear
    }
}

let someCar1 = Car()
let someCar2 = Car(newGear: 5)
print("someCar2.gear: \(someCar2.gear)")
