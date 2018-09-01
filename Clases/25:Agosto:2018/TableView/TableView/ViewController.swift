//
//  ViewController.swift
//  TableView
//
//  Created by Gerardo Castillo on 25/08/18.
//  Copyright © 2018 GerardoCastillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var nombres = ["Luis","Pedro","Juan","Manuel","Luis","Pedro","Juan","Manuel","Luis","Pedro","Juan","Manuel","Luis","Pedro","Juan","Manuel","Luis","Pedro","Juan","Manuel"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nombres.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "celda"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = "Nombre: \(nombres[indexPath.row])"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
       // let cell = tableView.cellForRow(at: indexPath)
       // cell?.accessoryType = .checkmark
        let alertContoller = UIAlertController(title: "Alumnos", message: "Hola como estas \(self.nombres[indexPath.row])", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        let cancelation = UIAlertAction(title: "Cancelar", style: .cancel) { (alertAction) in
            print("Click en el cancel")
        }
        alertContoller.addAction(okAction)
        
        present(alertContoller,animated: true,completion: nil )
    }

    



}

