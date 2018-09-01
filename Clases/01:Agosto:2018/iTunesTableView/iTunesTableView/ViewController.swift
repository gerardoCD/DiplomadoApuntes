//
//  ViewController.swift
//  iTunesTableView
//
//  Created by Gerardo Castillo on 01/09/18.
//  Copyright © 2018 GerardoCastillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tablita: UITableView!
    var tracks:[Tracks] = []
    
    let BaseUrl = URL(string: "https://www.apple.com/search?")!
    let query: [String: String] = [
        "term": "mecano",
        "limit": "10"
        ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        fetchData()
        print(tracks)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        cell.textLabel?.text = tracks[indexPath.row].artistName
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            tracks.remove(at: indexPath.row)
            tablita.reloadData()
        }
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deleteAction = UIContextualAction(style: .destructive, title: "Delegate") { (action, sourceView, completion) in
            self.tracks.remove(at: indexPath.row)
            self.tablita.deleteRows(at: [indexPath], with: .fade)
        }
        
        let shareAction = UIContextualAction(style: .normal, title: "Share") { (action, sourceView,completionHandler) in
            let text = "Listening: " + self.tracks[indexPath.row].artistName
            let activityController = UIActivityViewController(activityItems: [text], applicationActivities: nil)
            self.present(activityController, animated: true)
            
            
            
        }
        let swipeConfiguration = UISwipeActionsConfiguration(actions: [shareAction,deleteAction])
        return swipeConfiguration
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue"{
            let indexPath = tablita.indexPathForSelectedRow
            let destination = segue.destination as! SecoundViewController
            
            let image = UIImage(data: tracks[(indexPath?.row)!].artworkUrl100 as! Data)
           // destination.imgView = tracks[indexPath?.row].artworkUrl100
            destination.from FristView = tracks[(indexPath?.row)!].artistName
            
        }
    }
    
    func fetchData(){
        
        let url = BaseUrl.withQueries(query)
        
        let jsonDecoder = JSONDecoder()
        
        let task = URLSession.shared.dataTask(with: url!){(data, response, error) in
            if let data = data, let trackList = try? jsonDecoder.decode(Results.self, from: data){
                // if let data = data, let string = String(data: data, encoding: .utf8){
                //let temp: [Tracks] = []
                trackList.results.forEach({ (track) in
                    self.tracks.append(track)
                    self.tablita.reloadData()
                })
                //self.tracks = temp
                
            }
        }
        
        task.resume()
    }
    
}

extension URL{
    func withQueries(_ queries: [String: String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.compactMap { URLQueryItem(name: $0.0, value: $0.1)}
        return components?.url
    }
}
