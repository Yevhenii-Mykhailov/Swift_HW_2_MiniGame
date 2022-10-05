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
        for _ in 1...valueOfDices {
            result += Int.random(in: 1...6)
        }
        
        print("Rolling result is \(result)")
        return result
    }
}
