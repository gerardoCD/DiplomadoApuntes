//
//  ActionButton.swift
//  MathsGrafics
//
//  Created by Gerardo Castillo on 13/10/18.
//  Copyright © 2018 GerardoCastillo. All rights reserved.
//

import UIKit

class ActionButton: UIButton {
    private var halfWidth: CGFloat{
        return bounds.width / 2
    }
    private var halfHight: CGFloat{
        return bounds.height / 2
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
   
        override func draw(_ rect:CGRect){
            let path = UIBezierPath(ovalIn: rect)
            UIColor.green.setFill()
            path.fill()
        }
   
 

}
