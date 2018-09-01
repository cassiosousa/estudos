//: Playground - noun: a place where people can play


struct Person {
    var name: String
    var age: Int
    
    init(name:String) {
        self.name = name
        self.age = 0
    }
    
    init(name:String,age:Int){
        self.name = name
        self.age = age
    }
    
    func sayHello() {
        print("Say Hello")
    }
    
    mutating func incrementAge(){
        age+=1
    }
}

var person = Person(name: "Cássio Sousa", age: 32)

person.sayHello()

person.name = "João"
print(person.name)

person.incrementAge()

//computed properties (Propriedades computadas)


struct Temperature{
    var celsius: Double
    var fahrenheit:Double {
        return celsius * 1.8 + 32.0
    }
}

var temperature = Temperature(celsius:25)
print(temperature.celsius)
print(temperature.fahrenheit)
