//
//  TableViewController.swift
//  TableViewEjercicio
//
//  Created by Gerardo Castillo on 31/08/18.
//  Copyright © 2018 GerardoCastillo. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var todos = [ToDo]()
    var alumnos = ["Hola","Hola2","Hola3"]
    override func viewDidLoad() {
        super.viewDidLoad()
       
        if let savedToDos = ToDo.loadToDos() {
            todos = savedToDos
        } else {
            todos = ToDo.loadSampleToDos()!
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
     //   return todos.count
        return alumnos.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//         guard let cell = tableView.dequeueReusableCell(withIdentifier:"ToDoCellIndentifier") else {
//                    fatalError("Could not dequeue a cell")
//                  }
//        let todo = todos[indexPath.row]
//        cell.textLabel?.text = todo.title
//        return cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoCellIdentifier", for: indexPath) as! ToDoCell
        cell.delegate = self
        let todo = todos[indexPath.row]
        
        cell.titleLabel.text = todo.title
        cell.isCompletedButton.isSelected = todo.isComplete
        return cell
    }
    


 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
