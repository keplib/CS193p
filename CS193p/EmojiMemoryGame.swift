//
//  EmojiMemoryGame.swift
//  CS193p
//
//  Created by Balázs Képli on 01/12/2022.
//

import SwiftUI


class EmojiMemoryGame {
    static let emojis = ["🚂", "🚀", "🚁", "🚛", "🇯🇵", "✈️", "🚘", "🚢",
    "🛩", "🚄", "🛴", "🛶", "⛴", "🛫", "🛬", "🛵", "🚜", "🌋", "🏭", "⛱", "⛺️", "⛪️", "💻", "📹"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    // We make the model completely private so we cannot access it from views
    private var model: MemoryGame<String> = createMemoryGame()
    
    
    //But we still need the cards so we get it from the model (a copy) and return it
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
}
