//
//  ViewController.swift
//  HW_2_MiniGame
//
//  Created by Yevhenii M on 05.10.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let diceNumber = 4
        
        let gamer1 = Gamer(name: "John", valueOfDices: diceNumber)
        let gamer2 = Gamer(name: "Andy", valueOfDices: diceNumber)
        let listOfGamers = [gamer1, gamer2]
        
        let gameBoard = Board(numberOfGamers: listOfGamers)
        
        gameBoard.startGame(gamers: listOfGamers)
    }
    
}

