//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport


// Vista principal
let liveViewFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
let liveView = UIView(frame: liveViewFrame)
liveView.backgroundColor = UIColor(named: "red")
PlaygroundPage.current.liveView = liveView

//Vista secundaría
let smallFrame = CGRect(x: 0, y: 0, width: 100, height: 100)
let square = UIView(frame: smallFrame)
square.backgroundColor = UIColor(named: "white")

// Agregas una subvista a al vista principapl
liveView.addSubview(square)


//Animate
//UIView.animate(withDuration: 3.0){
//    square.backgroundColor = UIColor.orange
//    square.frame = CGRect(x: 150, y: 150, width: 150, height: 150)
//}


UIView.animate(withDuration: 3, animations: {
 square.backgroundColor = UIColor.orange
 square.frame = CGRect(x: 150, y: 150, width: 200, height: 200)
 }){(_) in
 UIView.animate(withDuration: 3){
 square.backgroundColor = UIColor.purple
 square.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
 }
 }





UIView.animate(withDuration: 3.0, animations: {
    square.backgroundColor = UIColor.blue
    let scaleTransform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    let rotateTransform = CGAffineTransform(rotationAngle: .pi)
    let translateTransform = CGAffineTransform(translationX: 200, y: 200)
    let combo = scaleTransform.concatenating(rotateTransform).concatenating(translateTransform)
    square.transform = combo
}){(_) in
    UIView.animate(withDuration: 2.0, animations: {
        square.transform = CGAffineTransform.identity
    })
}

