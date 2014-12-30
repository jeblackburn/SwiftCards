//
//  Card.swift
//  SwiftCards
//
//  Created by Jon on 12/29/14.
//  Copyright (c) 2014 Jonathan Blackburn. All rights reserved.
//

import Foundation

protocol Card {
    var value: String { get }
    var textColor: String { get }
}

class PlayingCard: Card {
    
    let suit: String
    let rank: Int
    
    class var rankStrings: [String] {
        return ["?", "A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    }
    

    class var allSuits: [String] {
        return ["♠︎", "♣︎", "♥︎", "♦︎"]
    }
    
    class var redSuits: [String] {
        return ["♥︎", "♦︎"]
    }
    
    class func allRanks() -> [Int] {
        return [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
    }
    
    init(suit: String, rank: Int) {
        self.suit = suit
        self.rank = rank
    }
    
    var value: String {
        return "\(PlayingCard.rankStrings[self.rank])\(self.suit)"
    }
    
    var textColor: String {
        if contains(PlayingCard.redSuits, self.suit) {
            return "red"
        }
        return "black"
    }
}