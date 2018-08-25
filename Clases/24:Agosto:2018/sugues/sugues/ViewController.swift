//
//  ViewController.swift
//  sugues
//
//  Created by Gerardo Castillo on 24/08/18.
//  Copyright © 2018 GerardoCastillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var swSegue: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnBlue(_ sender: UIButton) {
        
        if swSegue.isOn{
            performSegue(withIdentifier: "blueSegue", sender: nil)
        }else{
            
        }
        
    }
    @IBAction func btnGreen(_ sender: UIButton) {
        if swSegue.isOn{
            performSegue(withIdentifier: "greenSegue", sender: nil)
        }else{
            
        }
    }
    
}

