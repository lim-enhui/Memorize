//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Lim En Hui on 11/6/24.
//

import Foundation

//func createCardContent(forPairAtIndex index: Int) -> String {
//    ["👻","🎃","🕷️","😈","💀","🕸️","🧙‍♀️","🙀","👹","😱","☠️","🍭"][index]
//}

class EmojiMemoryGame: ObservableObject {
    
    private static let emojis = ["👻","🎃","🕷️","😈","💀","🕸️","🧙‍♀️","🙀","👹","😱","☠️","🍭"]
    
    @Published private var model = MemoryGame<String>(
        numberOfPairsOfCards: 6,
        cardContentFactory: { pairIndex in emojis.indices.contains(pairIndex) ? emojis[pairIndex] : "" }
    )
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intents
    
    func shuffle() {
        model.shuffle()
    }
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
