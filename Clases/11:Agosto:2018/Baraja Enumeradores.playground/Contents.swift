//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum Suit{
    case spades, hearts, diamonds, clubs
    var rank: Int {
        switch self {
        case .spades:
            return 4
        case .hearts:
            return 3
        case .diamonds:
            return 2
        case .clubs:
            return 1

        }
    }
    
    func beats(_ otherSuit:Suit) -> Bool{
        return self.rank > otherSuit.rank
    }
}

var carta = Suit.clubs
var carta2 = Suit.diamonds
carta.beats(carta2)
