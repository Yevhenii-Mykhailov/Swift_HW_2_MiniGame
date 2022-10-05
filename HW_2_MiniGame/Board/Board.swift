//
//  Board.swift
//  HW_2_MiniGame
//
//  Created by Yevhenii M on 05.10.2022.
//

import Foundation

class Board: GameRules {
    
    var numberOfGamers: [Gamer]
    
    init(numberOfGamers: [Gamer]) {
        self.numberOfGamers = numberOfGamers
    }
    
    func startGame (gamers: [Gamer]) {
        var result = [[String: Int]]()
        
        for gamer in gamers {
            let currentMove = [gamer.name: gamer.throwDice()]
            result.append(currentMove)
        }
        
        basicRule(results: result)
    }
    
    func basicRule(results: [[String: Int]]) {
        var maxResult = 0
        var resultMessage = ""
        
        for index in results.indices{
            let rollingResult = results[index].first?.value
            let currentGamerName = results[index].first?.key
            var previousGamerName = ""
            
            if let gettingResult = rollingResult {
                if gettingResult > maxResult {
                    maxResult = gettingResult
                    resultMessage = "\(currentGamerName ?? resultMessage) is a winner!"
                } else if gettingResult == maxResult {
                    resultMessage = "We have draw! Need to start new game!"
                } else {
                    if let previousGame = results[index-1].first?.key {
                        previousGamerName = previousGame
                    }
                    resultMessage = "\(previousGamerName) is a winner!"
                }
            }
        }
        
        print(resultMessage)
    }
}
