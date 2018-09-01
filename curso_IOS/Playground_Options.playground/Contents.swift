//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var address: String?
//print(address)

address = "Teste"

print(address!) // jeito arriscados unwrap

//optional binding
if let addressUnbind = address {
    print("Meu endereço 'e ",addressUnbind)
}else{
    print("Endereço não cadastrado!" )
}

let addressNumber = Int("100A")
if let addrNumber = addressNumber{
    print("O Número é",addrNumber)
}else{
    print("Número Inválido")
}

//Nil coaliscing operator (Operador de coalescência nula)
let number:String = "578"
let addressNumber2 = Int(number) ?? 0

//implicit Unwrapped Optionals
var name: String!
name = "Joãozinho"
print(name.count)


