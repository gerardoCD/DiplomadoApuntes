//
//  Model.swift
//  iTunesTableView
//
//  Created by Gerardo Castillo on 01/09/18.
//  Copyright © 2018 GerardoCastillo. All rights reserved.
//

import Foundation

struct Results:Decodable{
    var resultCount:Int
    var results:[Tracks]
}


struct Tracks:Decodable{
    var artistName: String
    var collectionName:String
    var artworkUrl100:String
}
