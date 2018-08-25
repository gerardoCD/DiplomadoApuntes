//
//  ViewController.swift
//  Log-In (Ejercicio)
//
//  Created by Gerardo Castillo on 24/08/18.
//  Copyright © 2018 GerardoCastillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblUser: UITextField!
    @IBOutlet weak var lblPaswword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnLogIn(_ sender: UIButton) {
        let user = "Gerardo"
        let pass = "1q2w3e4r"
        if user == lblUser.text && pass == lblPaswword.text{
            performSegue(withIdentifier: "accessSegue", sender: nil)
        }else{
            performSegue(withIdentifier: "wrongSegue", sender: nil)
        }
    }
    
}

