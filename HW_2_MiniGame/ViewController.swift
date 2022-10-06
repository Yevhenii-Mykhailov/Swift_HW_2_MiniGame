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
        let gamer1 = Gamer(name: "John")
        let gamer2 = Gamer(name: "Andy")
        let listOfGamers = [gamer1, gamer2]
        
        let gameBoard = Board(numberOfGamers: listOfGamers, numberOfDice: diceNumber)
        
        gameBoard.startGame(gamers: listOfGamers)
    }
}

