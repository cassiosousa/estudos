//: Playground - noun: a place where people can play

//FOR IN

for day in 1...30{
    print("Estou no dia \(day) de Setembro")
}

for _ in 1...30{
    print("Dedique-se ao curso de Desenvolvimento iOS 11")
}


let students = [
    "João Francisco",
    "Pedro henrique",
    "Cássio",
    "Janaina Santos",
    "Francisco José"
]

for student in students{
    print("O aluno \(student) veio na aula de hoje!")
}

let name = "Cássio Alexandre de Sousa"
//for letter in name.characters{
//    print(letter)
//}
//jeito novo
for letter in name {
    print(letter)
}

for (index,letter) in name.enumerated(){
    print(index,letter)
}

let people = [
    "Cássio":32,
    "Alexandre":45
]

for person in people{
    print(person.key,person.value)
}

for (name,age) in people{
    print(name,age)
}


//while

var life = 10
while life > 0 {
    print ("O jogador está com \(life)")
    life -= 1
}


import Foundation

var megaSena:[Int] = []

while megaSena.count < 6{
    let number = Int(arc4random_uniform(60)+1)
    if !megaSena.contains(number){
        megaSena.append(number)
    }
}
print(megaSena.sorted())


//repeat while
var tries = 0
var diceNumber = 0
repeat {
    tries += 1
    diceNumber = Int(arc4random_uniform(6)+1)
}while diceNumber != 6

print("Você tirou 6 após \(tries) tentativas.")








