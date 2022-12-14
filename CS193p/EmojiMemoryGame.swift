//
//  EmojiMemoryGame.swift
//  CS193p
//
//  Created by BalΓ‘zs KΓ©pli on 01/12/2022.
//

import SwiftUI


class EmojiMemoryGame {
    static let emojis = ["π", "π", "π", "π", "π―π΅", "βοΈ", "π", "π’",
    "π©", "π", "π΄", "πΆ", "β΄", "π«", "π¬", "π΅", "π", "π", "π­", "β±", "βΊοΈ", "βͺοΈ", "π»", "πΉ"]
    
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
