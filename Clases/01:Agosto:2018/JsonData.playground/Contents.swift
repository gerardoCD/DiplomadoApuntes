//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

/*let url = URL(string: "")!
 let task = URLSession.shared.dataTask(with: url) { (data,
 response, error) in
 if let data = data,
 let string = String(data: data, encoding: .utf8) {
 print(string)
 }
 }
 task.resume()
 */
struct Result:Decodable{
    var resultCount:Int
    var results:[Tracks]
}


struct Tracks:Codable{
    var artistName: String
    var collectionName:String
}



//MODIFYING URLS WITH COMPONENTS

extension URL{
    func withQueries(_ queries: [String: String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.compactMap { URLQueryItem(name: $0.0, value: $0.1)}
        return components?.url
    }
}

let baseURL = URL(string: "https://www.apple.com/la/itunes")!
let query: [String: String] = [
    "api_key": "DEMO_KEY",
    //"date": "2011-07-13"
]

let jsonDecoder = JSONDecoder()

let url = baseURL.withQueries(query)!
let task = URLSession.shared.dataTask(with: url) {
    (data,response, error) in
    if let data = data,
        let photoDictionary = try? jsonDecoder.decode(Result.self, from: data){
        photoDictionary.results.forEach({ (track) in
            print(track.artistName, track.collectionName)
        })
    }
}
task.resume()







