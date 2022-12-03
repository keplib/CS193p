//
//  MemoryGame.swift
//  CS193p
//
//  Created by Balázs Képli on 01/12/2022.
//

import Foundation

struct MemoryGame<CardContent> {
    // VM can look at the card and get hold of a copy but cannot modify them
    private(set) var cards: Array<Card>
    
    func choose(_ card: Card) {
        
    }
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        // add numberOfPairsOfCards x 2 cards to cards array
        for pairIndex in 0..<numberOfPairsOfCards {
            let content: CardContent = createCardContent(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
    
    struct Card {
        // When we create cards they all will be isFaceUp and isMatched false
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}
