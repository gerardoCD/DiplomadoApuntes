//
//  ViewController.swift
//  AutoLyout
//
//  Created by Gerardo Castillo on 11/08/18.
//  Copyright © 2018 GerardoCastillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var texto: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        texto.translatesAutoresizingMaskIntoConstraints = false
//        view.backgroundColor = UIColor.brown
//        texto.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        texto.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
   }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

