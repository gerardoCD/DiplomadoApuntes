//
//  ViewController.swift
//  RGB Conexiones
//
//  Created by Gerardo Castillo on 11/08/18.
//  Copyright © 2018 GerardoCastillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
 
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var sw1: UISwitch!
    @IBOutlet weak var sw2: UISwitch!
    @IBOutlet weak var sw3: UISwitch!
    
    @IBOutlet weak var sl1: UISlider!
    @IBOutlet weak var sl2: UISlider!
    @IBOutlet weak var sl3: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sl1.isEnabled = false
        sl2.isEnabled = false
        sl3.isEnabled = false
        self.view2.layer.borderWidth = 3
        self.view2.layer.borderColor = UIColor(red:222/255, green:225/255, blue:227/255, alpha: 1).cgColor
        view2.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func slider1Action(_ sender: UISlider) {
        if sw1.isOn{
             view2.backgroundColor = UIColor(red: CGFloat(sl1.value), green: CGFloat(sl2.value), blue: CGFloat(sl3.value), alpha: 1)
        }
       
    }
    
    @IBAction func slider2Action(_ sender: UISlider) {
        if sw2.isOn{
            view2.backgroundColor = UIColor(red: CGFloat(sl1.value), green: CGFloat(sl2.value), blue: CGFloat(sl3.value), alpha: 1)
        }
    }
    

    @IBAction func slider3Action(_ sender: UISlider) {
        if sw3.isOn{
            view2.backgroundColor = UIColor(red: CGFloat(sl1.value), green: CGFloat(sl2.value), blue: CGFloat(sl3.value), alpha: 1)
        }
    }
    
    @IBAction func swAction(_ sender: UISwitch) {
        if sw1.isOn{
            sl1.isEnabled = true
            view2.backgroundColor = UIColor(red: CGFloat(sl1.value), green: CGFloat(sl2.value), blue: CGFloat(sl3.value), alpha: 1)
        }else{
            sl1.isEnabled = false
        }
    }
    
    @IBAction func sw2Action(_ sender: UISwitch) {
        if sw2.isOn{
                sl2.isEnabled = true
                view2.backgroundColor = UIColor(red: CGFloat(sl1.value), green: CGFloat(sl2.value), blue: CGFloat(sl3.value), alpha: 1)
        }else{
            sl2.isEnabled = false
        }
    }
    
    @IBAction func sw3Action(_ sender: UISwitch) {
        if sw3.isOn{
                sl3.isEnabled = true
                view2.backgroundColor = UIColor(red: CGFloat(sl1.value), green: CGFloat(sl2.value), blue: CGFloat(sl3.value), alpha: 1)
        }else{
            sl3.isEnabled = false
        }
    }
    
    @IBAction func btnReset(_ sender: UIButton) {
        sw1.setOn(false, animated: false)
        sw2.setOn(false, animated: false)
        sw3.setOn(false, animated: false)
        sl1.setValue(1, animated: false)
        sl2.setValue(1, animated: false)
        sl3.setValue(1, animated: false)
        view2.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1)
    }
    
}

