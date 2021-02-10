import UIKit

struct Card{
    var color: String
    var roll: Int
    init(color: String) {
        self.color = color
        if color == "Blue"{
            self.roll = Int(arc4random_uniform(2)) + 1
        }
        else if color == "Red" {
            self.roll = Int(arc4random_uniform(2)) + 3
        }
        else {
            self.roll = Int(arc4random_uniform(2)) + 5
        }

    }
}
class Deck{
    var cards = [Card]()
    init(){
        for _ in 0..<10 {
            let newCard = Card(color: "Red")
            self.cards.append(newCard)
        }
        for _ in 0..<10 {
            let newCard = Card(color: "Blue")
            self.cards.append(newCard)
        }
        for _ in 0..<10 {
            let newCard = Card(color: "Green")
            self.cards.append(newCard)
        }
        
    }
    func deal() -> Card {
        let popped = self.cards.remove(at: 0)
        return popped
       }
    
    func isEmpty() -> Bool {
        if self.cards.count > 0 {
        return false
           }
        else {
            return true
         
        }
        
    }
    func shuffle() {
        let card = self.cards.count
        guard card > 1 else { return }
        var shuffled = [Card]();
        for _ in 0..<self.cards.count
        {
        let rand = Int(arc4random_uniform(UInt32(self.cards.count)))
        
        shuffled.append(self.cards[rand])
        
        self.cards.remove(at: rand)
        }
        self.cards = shuffled
            
        }


class Player {
    var name: String
    var hand = [Card]()
    init(name: String) {
        self.name = name
    }
    func draw(deck: Deck) -> Card {
        let card = deck.deal()
        self.hand.append(card)
        return card
    }
    func rollDice() -> Int {
        let rand = Int(arc4random_uniform(5)) + 1
        return rand
    }
    func matchingCards(color: String, roll: Int) -> Int {
        var count = 0
        for _ in 0..<self.hand.count {
            let card = self.hand.remove(at: 0)
            if card.color == color && card.roll == roll {
                count += 1
            }
        }
        return count
    }
}
    
    
}

