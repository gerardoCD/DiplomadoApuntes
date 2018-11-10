//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

protocol MiProtocolo{
    func juega()
}


class alumnoReprobador: MiProtocolo{
    func juega() {
        print("Estoy jugando")
    }
}



extension String{
    func saluda() {
        print("Hola soy una extension")
    }
}

extension alumnoReprobador{
    func saluda() {
        print("Hola soy una extension")
    }
}


var objeto = alumnoReprobador()
objeto.saluda()

var alumno = "Hola"
alumno.saluda()
