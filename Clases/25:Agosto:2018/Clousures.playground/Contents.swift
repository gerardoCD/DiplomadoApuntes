//: Playground - noun: a place where people can play

import UIKit

func suma(valor:Int,sumaFunc: (Int) -> Int) -> Int{
    return sumaFunc(valor)
}


let closure = {(valor:Int) -> Int in
    return valor + 5
    
}


suma(valor: 10, sumaFunc: closure)


suma(valor: 30, sumaFunc: {(valor:Int) -> Int in return valor + 10})

suma(valor: 30, sumaFunc: {valor -> Int in return valor + 10})

suma(valor: 30, sumaFunc: {return $0 + 5 })

suma(valor: 30, sumaFunc: {$0 + 10 })
