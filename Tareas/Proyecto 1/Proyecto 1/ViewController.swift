//
//  ViewController.swift
//  Proyecto 1
//
//  Created by Gerardo Castillo on 11/08/18.
//  Copyright © 2018 GerardoCastillo. All rights reserved.
//

import UIKit
import Foundation
import GameplayKit

class ViewController: UIViewController {

    @IBOutlet weak var lblPiedra: UILabel!
    @IBOutlet weak var lblPapel: UILabel!
    @IBOutlet weak var lblTijera: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // “let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)”
    @IBAction func btnPlay(_ sender: UIButton) {
        
    }
    @IBAction func TouchPiedra(_ sender: UITapGestureRecognizer) {
        let eleccion = Sign.piedra
        
    }
    @IBAction func RouchPapel(_ sender: UITapGestureRecognizer) {
        let eleccion = Sign.papel
    }
    @IBAction func TouchTijera(_ sender: UITapGestureRecognizer) {
        let eleccion = Sign.tijera
    }
    
}

