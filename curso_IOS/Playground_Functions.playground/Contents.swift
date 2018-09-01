//: Playground - noun: a place where people can play

func sayHello(){
    print("Hello")
}
sayHello()

func say(message:String){
    print(message)
}
say(message: "Bom Dia")

func say(message:String, to: String)->String{
//    print(message,to)
    return message+" "+to
}
let sentence = say(message: "Bom Dia", to: "Cássio")
print(sentence)

func sum(_ a: Int, _ b: Int)->Int{
    return a+b
}
print(sum(10,30))


func multiply(_ number1: Int, by number2: Int)->Int{
    return number1 * number2
}
print(multiply(20, by: 10))

func sum(_ initialValue: Int, withValues values:Int...) -> Int {
    var results = initialValue;
    for value in values{
        results+=value;
    }
    return results
}
print(sum(10, withValues: 3,5,67,8))


import Foundation

let studentData = "Cássio Alexandre de Sousa:32"

func getStudentInfo(_ data: String) -> (name: String, age: Int) {
    let info = data.components(separatedBy: ":")
    let student = info[0]
    let studentAge = Int(info[1])
    return (student,studentAge ?? 0)
}

let student = getStudentInfo(studentData)
print(student.name)
print(student.age)
