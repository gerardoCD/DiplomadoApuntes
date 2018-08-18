//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
// Formas de declarar una lista
var nombres: [String] = ["Luis","Paco","Hugo"]
var otrosNombres = ["Fer","Mary","Luis"]
var otraForma: [String] = []
var otraDormaMas: Array<String> = []
var unaMas = [Int]()


var numeros = [4,5,6]
if numeros.contains(5){
    print("Ese elememnto existe")
}

var myArray = [Int](repeating: 0, count: 100)
myArray.count
myArray.isEmpty
myArray[1] = 4

myArray.append(100)
dump(myArray)
myArray += [88,93]
myArray.insert(58, at: 0)
myArray.remove(at: 2)
myArray.removeLast()
myArray.removeAll()

var array1 = [1,2,3]
var array2 = [4,5,6]

// Diccionarios

var scores:[String:Int] = ["Pumas":10,"CA":10,"Ame":8]
var otrosScores = [String:Int]()
var otraFormaDic = Dictionary<String,Int>()
var ultimaForma : [String:Int] = [:]

scores["Pumas"] = 14
let oldValue = scores.updateValue(11, forKey: "CA")
if let myscore = scores["Pumas"]{
    print(myscore)
}

// Reverse
for index in stride(from: 10, to: 1, by: -1){
    print(index)
}
// Segunda forma
for index in 1..<5{
    print(index)
}

//
for _ in 1...5{
    print("Hola")
}
//
for letra in "Hola Mundo".lowercased(){
    print(letra)
}
//
for (index,nombre) in nombres.enumerated(){
    print(index,nombre)
}
// While
var i = 0
while i < 10 {
    i += 1
    print(i)
}



