//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Oysha on 20.08.2020.
//  Copyright © 2020 Oysha. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻", "🎃", "🕷", "🕸", "🧐"]
        let numOfCards = Int.random(in: 2...5)
        return MemoryGame<String>(numberOfPairsOfCards: numOfCards) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intetn(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}

