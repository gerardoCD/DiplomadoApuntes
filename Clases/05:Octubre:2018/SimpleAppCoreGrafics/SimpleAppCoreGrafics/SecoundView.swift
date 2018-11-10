//
//  SecoundView.swift
//  SimpleAppCoreGrafics
//
//  Created by Gerardo Castillo on 13/10/18.
//  Copyright © 2018 GerardoCastillo. All rights reserved.
//

import UIKit

class SecoundView: UIView {
    override func draw(_ rect: CGRect) {
       /*
        // DIbuja una linea
        let context = UIGraphicsGetCurrentContext()
        // Mueve de posicion la refrencia
        context?.move(to: CGPoint(x: 50.0, y: 50.0))
        // Agrega la linea
        context?.addLine(to: CGPoint(x: 150, y: 50.0))
        context?.addQuadCurve(to: CGPoint(x: 160, y: 60.0), control: CGPoint(x: 160, y: 50.0))
        context?.addLine(to: CGPoint(x: 160, y: 110.0))
        context?.addQuadCurve(to: CGPoint(x: 150, y: 120.0), control: CGPoint(x: 160, y: 120.0))
        context?.addLine(to: CGPoint(x: 50, y: 120.0))
        context?.addQuadCurve(to: CGPoint(x: 40, y: 110.0), control: CGPoint(x: 40, y: 120.0))
        context?.addLine(to: CGPoint(x: 40, y: 60.0))
        context?.addQuadCurve(to: CGPoint(x: 50, y: 50.0), control: CGPoint(x: 40, y: 50.0))
        // Se le pone color
        context?.setStrokeColor(UIColor.black.cgColor)
        context?.strokePath()
        
        //
        // context?.addLine(to: CGPoint(x: 100, y: frame.height))
        //
 
    */
        let context = UIGraphicsGetCurrentContext()
        context?.setStrokeColor(UIColor.black.cgColor)
        context?.setLineWidth(2)
        
        
    }
    

}
