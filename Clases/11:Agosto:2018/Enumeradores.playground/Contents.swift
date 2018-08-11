//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum LuchChoise{
    case pasta
    case burger
    case soup
    case fish
}


let footEnum:LuchChoise = LuchChoise.pasta
print(footEnum)

if footEnum == .burger{
    print("Es tu hamburgesa")
}else  if footEnum == .fish{
     print("Es tu pescado")
}else if footEnum == .pasta{
     print("Es tu pasta")
}else if footEnum == .soup{
     print("Es tu sopa")
}
