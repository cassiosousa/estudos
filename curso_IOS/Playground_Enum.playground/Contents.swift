//: Playground - noun: a place where people can play
enum CompassPoint{
    case north
    case east
    case west
    case south
}

//var direction: CompassPoint = CompassPoint.north
var direction = CompassPoint.north

var direction2:CompassPoint = .north

direction = .south

enum SeatPosition: String{
    case aisle="corredor",middle="meio",window="janela"
}

var passengerSeat:SeatPosition = .window
switch passengerSeat {
case .aisle:
    print("O passageiro está sentado no corredor")
case .middle:
    print("O passageiro está sentado no meio")
case .window:
    print("O passageiro está sentado na janela")
}

print(passengerSeat)
print(passengerSeat.rawValue)

enum Month:Int{
    case january = 1
    case february
    case march
    case april
    case may
    case june
}

print(Month.june.rawValue)

//associate values: Valores associados

enum Measure {
    case weight(Double)
    case age(Int)
    case size(width: Double, height: Double)
}

let measure: Measure = .size(width: 0.6, height: 1.85) //.weight(107) //.age(39)

switch measure {
    case .weight(let weight):
        print("O seu peso é:\(weight)")
    case .age(let ageValue):
        print("A sua idade é: \(ageValue)")
    case .size(let size):
        print("As suas medidas de tamanho são \(size.width) de largura e \(size.height)m de altura")
}

//optional é um enum






