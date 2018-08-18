//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Alumno{
    let nombre:String
    init(nombre:String) {
        self.nombre = nombre
    }
    
    func estudiar(){
        print("Alumno estudiando")
    }
}

class Ingeniero:Alumno{
    let promedio:Double
    override init(nombre: String) {
        self.promedio = 10.0
        super.init(nombre: nombre)
    }
    override func estudiar() {
        print("Los inges estudian prron, fierro!!!")
    }
}

let luis = Alumno(nombre: "Luis")
let Julio = Ingeniero(nombre: "Julio")


