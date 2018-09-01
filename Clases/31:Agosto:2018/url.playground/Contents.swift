//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport


let BaseUrl = URL(string: "https://www.apple.com")!


let query:[String:String] = ["term":"mecano"]


let task = URLSession.shared.dataTask(with: url){(data, response, error) in
    if let data = data, let string = String(data: data, encoding: .utf8){
        print(string)
    }
    }
    

task.resume()

PlaygroundPage.current.needsIndefiniteExecution = true

