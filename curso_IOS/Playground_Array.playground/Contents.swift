//: Playground - noun: a place where people can play

import UIKit


var name = ["Fulano","Ciclano","Beltrano"]
var namesB: [String] = ["Fulano","Ciclano","Beltrano"]

//var letteryNumber = [] error
var letteryNumber:[Int] = []
var phoneNumbers: [String]?

var ages: [UInt8] = [9,7,12,15,22] //UInt8

var guests = ["João", "Paula","Alexandre", "Patrícia","Sandra"]

print(guests.count)

print(guests.isEmpty)

let secondGuest = guests[1]
guests[0] = "Henrique"

print(guests)

guests[0...1] = ["Cassio","Sousa","Alexandre"]

print(guests)

if let first = guests.first{
    print(first)
}


if let last = guests.last{
    print(last)
}


guests += ["Joana","Josi"]
guests.append("Melissa")

guests.insert("Felipe", at: 2)
print(guests)

guests.removeFirst()
guests.removeLast()
guests.remove(at: 2)
//guests.removeAll();

if guests.contains("Cassio"){
    print("\(guests.contains("Cassio")) encontrado!")
}

guests.forEach {
    print($0)
}

guests.append("Romeu")

func printAll(items itm:[String]){
    itm.forEach {
        print("item:\($0)")
    }
}

printAll(items: guests)

