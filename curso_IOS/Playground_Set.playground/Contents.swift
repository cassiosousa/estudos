//: Playground - noun: a place where people can play

var movies: Set<String> = [
    "Matrix",
    "Vingadores",
    "Jurassic Park",
    "De volta para o futuro"
]

var movies2: Set<String>

movies.insert("Homem Aranha: de volta para o lar")
print(movies.count)

movies.insert("Homem Aranha: de volta para o lar")
print(movies.count)

let result = movies.insert("Homem Aranha: de volta para o lar")
print(result.inserted, result.memberAfterInsert)

movies.remove("Homem Aranha: de volta para o lar")
print(movies.count)

for movie in movies{
    print(movie)
}

if movies.contains("Matrix"){
    print("Matrix está na minha lista de filmes favoritos!")
}

var myWifeMovies: Set<String> = [
    "De Repente 30",
    "Mensagem para você",
    "Sintonia de Amor",
    "De volta para o futuro",
    "Jurassic Park"
]

let favoriteMovies:Set<String> = movies.intersection(myWifeMovies)

let allMovies:Set<String> = movies.union(myWifeMovies)
print(allMovies)

movies = movies.subtracting(myWifeMovies)
print(movies)

//tuplas

//let address = "Av. Paulista, 1578, São Paulo - SP, 013210-200"
//let address:(String,String,Int,String,String,String) = ("Av","Paulista",1578,"São Paulo","SP","013210-200") or
let address:(type:String,name:String,number:Int,city:String,state:String,zipCode:String) = ("Av","Paulista",1578,"São Paulo","SP","013210-200")
print(address.number)
//let address = ("Av","Paulista",1578,"São Paulo","SP","013210-200")
//print(address.2)

let (type,name,numer,city,state,cep) = address
// se nao quiser alguma variavel da tupla
//let (type,name,numer,_,_,cep) = address
print(type)
print(name)




