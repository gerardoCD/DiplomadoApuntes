//
//  ViewController.swift
//  ejercicioApi
//
//  Created by Gerardo Castillo on 06/10/18.
//  Copyright © 2018 GerardoCastillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       var fishesHash = [Fish]()
        let sharedSession = URLSession.shared
        
        if let url = URL(string: "https://plasticfishes.herokuapp.com/api/fishes") {
            // Create Request
            let request = URLRequest(url: url)
            
            // Create Data Task
            let dataTask = sharedSession.dataTask(with: request, completionHandler: { (data, response, error) -> Void in
                
               
                if let data = data {
                    //print(data.toString())
                    guard let fish = try? JSONDecoder().decode([Fish].self, from: data) else {
                        print("error")
                     return
                    }
                    let objeto = SHA1Hashing()
                    print(fish[1].name)
                    print(objeto.hash(str: fish[1].name))
                
                  
                    
               

                }
                    
                
            
            })
            
            dataTask.resume()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}


extension Data
{
    func toString() -> String
    {
        return String(data: self, encoding: .utf8)!
    }
}




