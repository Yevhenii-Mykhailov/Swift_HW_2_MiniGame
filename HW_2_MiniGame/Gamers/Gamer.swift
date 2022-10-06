//
//  Gamer.swift
//  HW_2_MiniGame
//
//  Created by Yevhenii M on 05.10.2022.
//

import Foundation

struct Gamer: Dice {
    var name: String
    var valueOfDices: Int
    
    func throwDice() -> Int {
        print("\(name) rolling.. ")
        
        var result = 0
        for dice in 1...valueOfDices {
            let diceResult = Int.random(in: 1...6)
            result += diceResult
            print("Dice number \(dice) with result: \(diceResult)")
        }
        
        print("Rolling result is \(result)")
        return result
    }
}
