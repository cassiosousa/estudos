//: Playground - noun: a place where people can play

//closure pedaço auto contido de código são funções anonimas

func sum(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

func calculate(_ a: Int, _ b: Int, operation: (Int,Int) -> Int) -> Int {
    return operation(a,b)
}

calculate(10, 20, operation: sum)

calculate(10, 20, operation: { (a: Int, b: Int) -> Int in
    return a * b / 40
})

calculate(10, 20, operation: { (a, b) -> Int in
    return a * b / 40
})

calculate(10, 20, operation: { a, b in
    return a * b / 40
})

calculate(10, 20, operation: {
    return $0 * $1 / 40
})

calculate(10, 20, operation: {$0 * $1 / 40})

calculate(10, 20, operation: *) // só da pra fazer isso se a closeru for o ultimo parâmetro


calculate(10, 20) { $0 * $1} // somente quando closure for o ultimo parametro


import Foundation
var names = [
"  Cássio",
"Josi  ",
"  Melissa",
"    Felipe"
]


//MAP
let correctedNames = names.map({$0.trimmingCharacters(in: CharacterSet.whitespaces)})
print(correctedNames)

let upperCased = correctedNames.map({$0.uppercased()})
print(upperCased)

let sousas = correctedNames.map({$0 + " Sousa"})
print(sousas)

//Filter

let newNames = correctedNames.filter({$0.count < 7 })
print(newNames)

//Reduce comprimindo itens

let sumLetter = correctedNames.reduce(0, {$0+$1.count})
print(sumLetter)












