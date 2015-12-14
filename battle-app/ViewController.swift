//
//  ViewController.swift
//  battle-app
//
//  Created by Simon Thomas on 13/12/2015.
//  Copyright © 2015 Simon Thomas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
            /*
            Need to prompt users to choose character
            Generate both characters
            Construct UI
            */
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

