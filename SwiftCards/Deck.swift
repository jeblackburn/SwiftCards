//
//  Deck.swift
//  SwiftCards
//
//  Created by Jon on 12/29/14.
//  Copyright (c) 2014 Jonathan Blackburn. All rights reserved.
//

import Foundation

protocol Deck {
    var randomCard: Card { get }
    var cards: [Card] { get }
    var cardsLeft: Bool { get }

}

class PlayingCardDeck: Deck {
    var cards: [Card]
    
    init() {
        cards = PlayingCardDeck.createCards()
    }
    
    class func createCards() -> [Card] {
        var cards = [Card]()
        for suit in PlayingCard.allSuits {
            for rank in PlayingCard.allRanks() {
                NSLog("Adding card %s  %d", suit, rank)
                cards.append(PlayingCard(suit: suit, rank: rank))
            }
        }
        return cards
    }
    
    var randomCard: Card {
        let randomIdx = random() % self.cards.count
        return self.cards.removeAtIndex(randomIdx)
    }
    
    var cardsLeft: Bool {
        return self.cards.count > 0
    }
}