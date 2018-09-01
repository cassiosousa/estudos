//: Playground - noun: a place where people can play

//first class citizen // cidadão de primeira classe

func sum(_ a:Int, _ b: Int) -> Int {
    return a + b;
}

func subtract(_ a:Int, _ b: Int) -> Int {
    return a - b;
}

func divide(_ a:Int, _ b: Int) -> Int {
    return a / b;
}

func multiply(_ a:Int, _ b: Int) -> Int {
    return a * b;
    
}

//typealias
typealias op = (Int,Int) -> Int

func applyOperation(_ a: Int, _ b: Int, operation: op) -> Int {
    return operation( a, b)
}

let result = applyOperation(10, 20, operation: sum)

func getOperation(_ operation: String) -> op{
    switch operation {
    case "som":
        return sum
    case "subtração": return subtract
    case "multiplicação": return multiply
    default:
        return divide
    }
}


var operation = getOperation("subtração")

operation(30,15)

//função parte de classe ou struct é chamado de método senão função


