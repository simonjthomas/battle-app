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
            /*
            Generate both characters
            Construct UI
            */
        
        //  Instantiate Players
        player1 = Character(_hp: 100, _name: "Orc", _player: 1, _isAlive: true)
        player2 = Character(_hp: 100, _name: "Knight", _player: 2, _isAlive: true)
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
    }
    @IBAction func player1AttackBtnPressed(sender: UIButton) {
    }
    @IBAction func player2AttackBtnPressed(sender: UIButton) {
    }
    

}

