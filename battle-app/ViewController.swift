//
//  ViewController.swift
//  battle-app
//
//  Created by Simon Thomas on 13/12/2015.
//  Copyright © 2015 Simon Thomas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var player1: Character!
    var player2: Character!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            restartGame()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // @IBOutlets
    @IBOutlet weak var textLbl: UILabel!
    @IBOutlet weak var player1HPLbl: UILabel!
    @IBOutlet weak var player2HPLbl: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    @IBOutlet weak var player1AttackBtn: UIButton!
    @IBOutlet weak var player2AttackBtn: UIButton!
    
    // @IBActions
    @IBAction func restartBtnPressed(sender: UIButton) {
        restartGame()
    }
    @IBAction func player1AttackBtnPressed(sender: UIButton) {
        if player1.attemptAttack(player2) {
            if player2.isAlive {
                // Still Alive, Update label and freeze player 1
                player2HPLbl.text = "\(player2.hp) HP"
                player1AttackBtn.hidden = true
                player2AttackBtn.hidden = false
            } else {
                // Dead
                endGame(1)
            }
        }
        
    }
    
    @IBAction func player2AttackBtnPressed(sender: UIButton) {
        if player2.attemptAttack(player1) {
            if player1.isAlive {
                // Still Alive, Update label and freeze player 2
                player1HPLbl.text = "\(player1.hp) HP"
                player2AttackBtn.hidden = true
                player1AttackBtn.hidden = false
            } else {
                // Dead
                endGame(2)
            }
        }
    }
    
    func endGame(winner: Int) {
        player1AttackBtn.hidden = true
        player2AttackBtn.hidden = true
        player1HPLbl.hidden = true
        player2HPLbl.hidden = true
        // Update Text
        textLbl.text = "Player \(winner) Wins. Congratulations"
        restartButton.hidden = false
        
    }
    
    func restartGame() {
        //  Instantiate Players
        player1 = Character(_hp: 100, _name: "Orc", _player: 1, _isAlive: true)
        player2 = Character(_hp: 100, _name: "Knight", _player: 2, _isAlive: true)
        
        // Set up UI
        textLbl.text = "Attack!"
        restartButton.hidden = true
        player1AttackBtn.hidden = false
        player2AttackBtn.hidden = false
        player1HPLbl.hidden = false
        player2HPLbl.hidden = false
        
        player1HPLbl.text = "\(player1.hp) HP"
        player2HPLbl.text = "\(player2.hp) HP"
        
    }

}

