//: Playground - noun: a place where people can play

enum LoginError: Error {
    case wrongLogin
    case wrongPassword
    case noInternetConnection
}

func login(username: String, password: String) throws -> Bool {
    if checkInternetConnection() {
        if username != "cassio"{
            throw LoginError.wrongLogin
        }
        if password != "123"{
            throw LoginError.wrongPassword
        }
        return true
    }
    
    throw LoginError.noInternetConnection
}

func checkInternetConnection() -> Bool {
    return true
}

do {
    let loginResult = try login(username: "cassio", password: "teste")
}catch {
    print(error)
}

do {
    let loginResult = try login(username: "aa", password: "teste")
}catch LoginError.wrongLogin {
    print("Usuário invalido")
}

do {
    let loginResult = try login(username: "cassio", password: "teste")
}catch LoginError.wrongPassword {
    print("Senha inválida")
}

//cenário que vc sabe que o erro não vai acontecer

let loginResult = try? login(username: "cassio", password: "123")

//cenário que vc tem certeza absoluta q não vai ocorrer erro

let loginResult = try! login(username: "cassio", password: "123")


