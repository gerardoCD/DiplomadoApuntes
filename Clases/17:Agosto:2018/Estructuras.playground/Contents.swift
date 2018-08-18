//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct Alumno{
    var nombre: String
    var edad: Int
    var carrera: String = "Ing Computacion"{
        didSet{
            print(self.carrera)
        }
        willSet{
            print(self.carrera)
        }
        
    }
    mutating func cambiaValor(){
        nombre = "nobody"
    }
    
    init(nombre:String) {
        self.nombre = nombre
        self.edad = 0
    }
    
    init(edad: Int){
        self.edad = edad
        self.nombre = "Desconocido"
        
    }
    
    
}

var luis = Alumno(nombre: "Luis")
luis.carrera = "Lic Contaduria"
luis.carrera = "Lic Psicología"



dump(luis)
//
//class Profesor{
//    var nombre:String = "none"
//}
//
//var german = Profesor()
//var beto = german
//beto.nombre = "Beto"
//dump(german)
//dump(beto)




