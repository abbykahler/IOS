import UIKit

func tossCoin(){
//print("Tossing a Coin!")

let randomInt = Int.random(in: 1..<3)
//print(randomInt)
    if randomInt == 1{
//    print("Heads")
    }
    else{
//    print("Tails")
    }
}

tossCoin()

func tossMultipleCoins(tosses: Int) -> Double {
var heads = 0
var tails = 0
    for _ in 1...tosses {
        let randomInt = Int.random(in: 1..<3)
        if randomInt == 1 {
            heads += 1
//            print("Heads")
        }else {
            tails += 1
//            print("Tails")
        }
    }

    
    
    return Double(tosses) / Double(heads)
}
tossMultipleCoins(tosses: 100)



